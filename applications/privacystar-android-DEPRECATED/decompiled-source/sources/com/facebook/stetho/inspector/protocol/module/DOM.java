package com.facebook.stetho.inspector.protocol.module;

import android.graphics.Color;
import com.facebook.stetho.common.Accumulator;
import com.facebook.stetho.common.ArrayListAccumulator;
import com.facebook.stetho.common.LogUtil;
import com.facebook.stetho.common.UncheckedCallable;
import com.facebook.stetho.common.Util;
import com.facebook.stetho.inspector.elements.Document;
import com.facebook.stetho.inspector.elements.DocumentView;
import com.facebook.stetho.inspector.elements.ElementInfo;
import com.facebook.stetho.inspector.elements.NodeDescriptor;
import com.facebook.stetho.inspector.elements.NodeType;
import com.facebook.stetho.inspector.helper.ChromePeerManager;
import com.facebook.stetho.inspector.helper.PeersRegisteredListener;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcException;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcPeer;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcResult;
import com.facebook.stetho.inspector.jsonrpc.protocol.JsonRpcError;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsDomain;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsMethod;
import com.facebook.stetho.inspector.protocol.module.Runtime;
import com.facebook.stetho.json.ObjectMapper;
import com.facebook.stetho.json.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM.class */
public class DOM implements ChromeDevtoolsDomain {
    private ChildNodeInsertedEvent mCachedChildNodeInsertedEvent;
    private ChildNodeRemovedEvent mCachedChildNodeRemovedEvent;
    private final Document mDocument;
    private final ObjectMapper mObjectMapper = new ObjectMapper();
    private final Map<String, List<Integer>> mSearchResults = Collections.synchronizedMap(new HashMap());
    private final AtomicInteger mResultCounter = new AtomicInteger(0);
    private final ChromePeerManager mPeerManager = new ChromePeerManager();
    private final DocumentUpdateListener mListener = new DocumentUpdateListener();

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$AttributeModifiedEvent.class */
    private static class AttributeModifiedEvent {
        @JsonProperty(required = true)
        public String name;
        @JsonProperty(required = true)
        public int nodeId;
        @JsonProperty(required = true)
        public String value;

        private AttributeModifiedEvent() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$AttributeRemovedEvent.class */
    private static class AttributeRemovedEvent {
        @JsonProperty(required = true)
        public String name;
        @JsonProperty(required = true)
        public int nodeId;

        private AttributeRemovedEvent() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$ChildNodeInsertedEvent.class */
    public static class ChildNodeInsertedEvent {
        @JsonProperty(required = true)
        public Node node;
        @JsonProperty(required = true)
        public int parentNodeId;
        @JsonProperty(required = true)
        public int previousNodeId;

        private ChildNodeInsertedEvent() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$ChildNodeRemovedEvent.class */
    public static class ChildNodeRemovedEvent {
        @JsonProperty(required = true)
        public int nodeId;
        @JsonProperty(required = true)
        public int parentNodeId;

        private ChildNodeRemovedEvent() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$DiscardSearchResultsRequest.class */
    private static class DiscardSearchResultsRequest {
        @JsonProperty(required = true)
        public String searchId;

        private DiscardSearchResultsRequest() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$DocumentUpdateListener.class */
    private final class DocumentUpdateListener implements Document.UpdateListener {
        private DocumentUpdateListener() {
        }

        @Override // com.facebook.stetho.inspector.elements.Document.UpdateListener
        public void onAttributeModified(Object obj, String str, String str2) {
            AttributeModifiedEvent attributeModifiedEvent = new AttributeModifiedEvent();
            attributeModifiedEvent.nodeId = DOM.this.mDocument.getNodeIdForElement(obj).intValue();
            attributeModifiedEvent.name = str;
            attributeModifiedEvent.value = str2;
            DOM.this.mPeerManager.sendNotificationToPeers("DOM.attributeModified", attributeModifiedEvent);
        }

        @Override // com.facebook.stetho.inspector.elements.Document.UpdateListener
        public void onAttributeRemoved(Object obj, String str) {
            AttributeRemovedEvent attributeRemovedEvent = new AttributeRemovedEvent();
            attributeRemovedEvent.nodeId = DOM.this.mDocument.getNodeIdForElement(obj).intValue();
            attributeRemovedEvent.name = str;
            DOM.this.mPeerManager.sendNotificationToPeers("DOM.attributeRemoved", attributeRemovedEvent);
        }

        @Override // com.facebook.stetho.inspector.elements.Document.UpdateListener
        public void onChildNodeInserted(DocumentView documentView, Object obj, int i, int i2, Accumulator<Object> accumulator) {
            ChildNodeInsertedEvent acquireChildNodeInsertedEvent = DOM.this.acquireChildNodeInsertedEvent();
            acquireChildNodeInsertedEvent.parentNodeId = i;
            acquireChildNodeInsertedEvent.previousNodeId = i2;
            acquireChildNodeInsertedEvent.node = DOM.this.createNodeForElement(obj, documentView, accumulator);
            DOM.this.mPeerManager.sendNotificationToPeers("DOM.childNodeInserted", acquireChildNodeInsertedEvent);
            DOM.this.releaseChildNodeInsertedEvent(acquireChildNodeInsertedEvent);
        }

        @Override // com.facebook.stetho.inspector.elements.Document.UpdateListener
        public void onChildNodeRemoved(int i, int i2) {
            ChildNodeRemovedEvent acquireChildNodeRemovedEvent = DOM.this.acquireChildNodeRemovedEvent();
            acquireChildNodeRemovedEvent.parentNodeId = i;
            acquireChildNodeRemovedEvent.nodeId = i2;
            DOM.this.mPeerManager.sendNotificationToPeers("DOM.childNodeRemoved", acquireChildNodeRemovedEvent);
            DOM.this.releaseChildNodeRemovedEvent(acquireChildNodeRemovedEvent);
        }

        @Override // com.facebook.stetho.inspector.elements.Document.UpdateListener
        public void onInspectRequested(Object obj) {
            Integer nodeIdForElement = DOM.this.mDocument.getNodeIdForElement(obj);
            if (nodeIdForElement == null) {
                LogUtil.m376d("DocumentProvider.Listener.onInspectRequested() called for a non-mapped node: element=%s", obj);
                return;
            }
            InspectNodeRequestedEvent inspectNodeRequestedEvent = new InspectNodeRequestedEvent();
            inspectNodeRequestedEvent.nodeId = nodeIdForElement.intValue();
            DOM.this.mPeerManager.sendNotificationToPeers("DOM.inspectNodeRequested", inspectNodeRequestedEvent);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$GetDocumentResponse.class */
    private static class GetDocumentResponse implements JsonRpcResult {
        @JsonProperty(required = true)
        public Node root;

        private GetDocumentResponse() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$GetSearchResultsRequest.class */
    private static class GetSearchResultsRequest {
        @JsonProperty(required = true)
        public int fromIndex;
        @JsonProperty(required = true)
        public String searchId;
        @JsonProperty(required = true)
        public int toIndex;

        private GetSearchResultsRequest() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$GetSearchResultsResponse.class */
    private static class GetSearchResultsResponse implements JsonRpcResult {
        @JsonProperty(required = true)
        public List<Integer> nodeIds;

        private GetSearchResultsResponse() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$HighlightConfig.class */
    private static class HighlightConfig {
        @JsonProperty
        public RGBAColor contentColor;

        private HighlightConfig() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$HighlightNodeRequest.class */
    private static class HighlightNodeRequest {
        @JsonProperty(required = true)
        public HighlightConfig highlightConfig;
        @JsonProperty
        public Integer nodeId;
        @JsonProperty
        public String objectId;

        private HighlightNodeRequest() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$InspectNodeRequestedEvent.class */
    private static class InspectNodeRequestedEvent {
        @JsonProperty
        public int nodeId;

        private InspectNodeRequestedEvent() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$Node.class */
    public static class Node implements JsonRpcResult {
        @JsonProperty
        public List<String> attributes;
        @JsonProperty
        public Integer childNodeCount;
        @JsonProperty
        public List<Node> children;
        @JsonProperty(required = true)
        public String localName;
        @JsonProperty(required = true)
        public int nodeId;
        @JsonProperty(required = true)
        public String nodeName;
        @JsonProperty(required = true)
        public NodeType nodeType;
        @JsonProperty(required = true)
        public String nodeValue;

        private Node() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$PeerManagerListener.class */
    private final class PeerManagerListener extends PeersRegisteredListener {
        private PeerManagerListener() {
        }

        @Override // com.facebook.stetho.inspector.helper.PeersRegisteredListener
        protected void onFirstPeerRegistered() {
            synchronized (this) {
                DOM.this.mDocument.addRef();
                DOM.this.mDocument.addUpdateListener(DOM.this.mListener);
            }
        }

        @Override // com.facebook.stetho.inspector.helper.PeersRegisteredListener
        protected void onLastPeerUnregistered() {
            synchronized (this) {
                DOM.this.mSearchResults.clear();
                DOM.this.mDocument.removeUpdateListener(DOM.this.mListener);
                DOM.this.mDocument.release();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$PerformSearchRequest.class */
    private static class PerformSearchRequest {
        @JsonProperty
        public Boolean includeUserAgentShadowDOM;
        @JsonProperty(required = true)
        public String query;

        private PerformSearchRequest() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$PerformSearchResponse.class */
    private static class PerformSearchResponse implements JsonRpcResult {
        @JsonProperty(required = true)
        public int resultCount;
        @JsonProperty(required = true)
        public String searchId;

        private PerformSearchResponse() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$RGBAColor.class */
    private static class RGBAColor {
        @JsonProperty

        /* renamed from: a */
        public Double f115a;
        @JsonProperty(required = true)

        /* renamed from: b */
        public int f116b;
        @JsonProperty(required = true)

        /* renamed from: g */
        public int f117g;
        @JsonProperty(required = true)

        /* renamed from: r */
        public int f118r;

        private RGBAColor() {
        }

        public int getColor() {
            byte b = -1;
            if (this.f115a != null) {
                long round = Math.round(this.f115a.doubleValue() * 255.0d);
                if (round < 0) {
                    b = 0;
                } else if (round < 255) {
                    b = (byte) round;
                }
            }
            return Color.argb((int) b, this.f118r, this.f117g, this.f116b);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$ResolveNodeRequest.class */
    private static class ResolveNodeRequest {
        @JsonProperty(required = true)
        public int nodeId;
        @JsonProperty
        public String objectGroup;

        private ResolveNodeRequest() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$ResolveNodeResponse.class */
    private static class ResolveNodeResponse implements JsonRpcResult {
        @JsonProperty(required = true)
        public Runtime.RemoteObject object;

        private ResolveNodeResponse() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$SetAttributesAsTextRequest.class */
    private static class SetAttributesAsTextRequest {
        @JsonProperty(required = true)
        public int nodeId;
        @JsonProperty(required = true)
        public String text;

        private SetAttributesAsTextRequest() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/DOM$SetInspectModeEnabledRequest.class */
    private static class SetInspectModeEnabledRequest {
        @JsonProperty(required = true)
        public boolean enabled;
        @JsonProperty
        public HighlightConfig highlightConfig;
        @JsonProperty
        public Boolean inspectShadowDOM;

        private SetInspectModeEnabledRequest() {
        }
    }

    public DOM(Document document) {
        this.mDocument = (Document) Util.throwIfNull(document);
        this.mPeerManager.setListener(new PeerManagerListener());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ChildNodeInsertedEvent acquireChildNodeInsertedEvent() {
        ChildNodeInsertedEvent childNodeInsertedEvent = this.mCachedChildNodeInsertedEvent;
        ChildNodeInsertedEvent childNodeInsertedEvent2 = childNodeInsertedEvent;
        if (childNodeInsertedEvent == null) {
            childNodeInsertedEvent2 = new ChildNodeInsertedEvent();
        }
        this.mCachedChildNodeInsertedEvent = null;
        return childNodeInsertedEvent2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ChildNodeRemovedEvent acquireChildNodeRemovedEvent() {
        ChildNodeRemovedEvent childNodeRemovedEvent = this.mCachedChildNodeRemovedEvent;
        ChildNodeRemovedEvent childNodeRemovedEvent2 = childNodeRemovedEvent;
        if (childNodeRemovedEvent == null) {
            childNodeRemovedEvent2 = new ChildNodeRemovedEvent();
        }
        this.mCachedChildNodeRemovedEvent = null;
        return childNodeRemovedEvent2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Node createNodeForElement(Object obj, DocumentView documentView, @Nullable Accumulator<Object> accumulator) {
        if (accumulator != null) {
            accumulator.store(obj);
        }
        NodeDescriptor nodeDescriptor = this.mDocument.getNodeDescriptor(obj);
        Node node = new Node();
        node.nodeId = this.mDocument.getNodeIdForElement(obj).intValue();
        node.nodeType = nodeDescriptor.getNodeType(obj);
        node.nodeName = nodeDescriptor.getNodeName(obj);
        node.localName = nodeDescriptor.getLocalName(obj);
        node.nodeValue = nodeDescriptor.getNodeValue(obj);
        Document.AttributeListAccumulator attributeListAccumulator = new Document.AttributeListAccumulator();
        nodeDescriptor.getAttributes(obj, attributeListAccumulator);
        node.attributes = attributeListAccumulator;
        ElementInfo elementInfo = documentView.getElementInfo(obj);
        List<Node> emptyList = elementInfo.children.size() == 0 ? Collections.emptyList() : new ArrayList<>(elementInfo.children.size());
        int size = elementInfo.children.size();
        for (int i = 0; i < size; i++) {
            emptyList.add(createNodeForElement(elementInfo.children.get(i), documentView, accumulator));
        }
        node.children = emptyList;
        node.childNodeCount = Integer.valueOf(emptyList.size());
        return node;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseChildNodeInsertedEvent(ChildNodeInsertedEvent childNodeInsertedEvent) {
        childNodeInsertedEvent.parentNodeId = -1;
        childNodeInsertedEvent.previousNodeId = -1;
        childNodeInsertedEvent.node = null;
        if (this.mCachedChildNodeInsertedEvent == null) {
            this.mCachedChildNodeInsertedEvent = childNodeInsertedEvent;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseChildNodeRemovedEvent(ChildNodeRemovedEvent childNodeRemovedEvent) {
        childNodeRemovedEvent.parentNodeId = -1;
        childNodeRemovedEvent.nodeId = -1;
        if (this.mCachedChildNodeRemovedEvent == null) {
            this.mCachedChildNodeRemovedEvent = childNodeRemovedEvent;
        }
    }

    @ChromeDevtoolsMethod
    public void disable(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        this.mPeerManager.removePeer(jsonRpcPeer);
    }

    @ChromeDevtoolsMethod
    public void discardSearchResults(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        DiscardSearchResultsRequest discardSearchResultsRequest = (DiscardSearchResultsRequest) this.mObjectMapper.convertValue(jSONObject, DiscardSearchResultsRequest.class);
        if (discardSearchResultsRequest.searchId != null) {
            this.mSearchResults.remove(discardSearchResultsRequest.searchId);
        }
    }

    @ChromeDevtoolsMethod
    public void enable(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        this.mPeerManager.addPeer(jsonRpcPeer);
    }

    @ChromeDevtoolsMethod
    public JsonRpcResult getDocument(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        GetDocumentResponse getDocumentResponse = new GetDocumentResponse();
        getDocumentResponse.root = (Node) this.mDocument.postAndWait(new UncheckedCallable<Node>() { // from class: com.facebook.stetho.inspector.protocol.module.DOM.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.facebook.stetho.common.UncheckedCallable
            public Node call() {
                return DOM.this.createNodeForElement(DOM.this.mDocument.getRootElement(), DOM.this.mDocument.getDocumentView(), null);
            }
        });
        return getDocumentResponse;
    }

    @ChromeDevtoolsMethod
    public GetSearchResultsResponse getSearchResults(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        GetSearchResultsRequest getSearchResultsRequest = (GetSearchResultsRequest) this.mObjectMapper.convertValue(jSONObject, GetSearchResultsRequest.class);
        if (getSearchResultsRequest.searchId == null) {
            LogUtil.m361w("searchId may not be null");
            return null;
        }
        List<Integer> list = this.mSearchResults.get(getSearchResultsRequest.searchId);
        if (list == null) {
            LogUtil.m361w("\"" + getSearchResultsRequest.searchId + "\" is not a valid reference to a search result");
            return null;
        }
        List<Integer> subList = list.subList(getSearchResultsRequest.fromIndex, getSearchResultsRequest.toIndex);
        GetSearchResultsResponse getSearchResultsResponse = new GetSearchResultsResponse();
        getSearchResultsResponse.nodeIds = subList;
        return getSearchResultsResponse;
    }

    @ChromeDevtoolsMethod
    public void hideHighlight(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        this.mDocument.postAndWait(new Runnable() { // from class: com.facebook.stetho.inspector.protocol.module.DOM.3
            @Override // java.lang.Runnable
            public void run() {
                DOM.this.mDocument.hideHighlight();
            }
        });
    }

    @ChromeDevtoolsMethod
    public void highlightNode(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        final HighlightNodeRequest highlightNodeRequest = (HighlightNodeRequest) this.mObjectMapper.convertValue(jSONObject, HighlightNodeRequest.class);
        if (highlightNodeRequest.nodeId == null) {
            LogUtil.m361w("DOM.highlightNode was not given a nodeId; JS objectId is not supported");
            return;
        }
        final RGBAColor rGBAColor = highlightNodeRequest.highlightConfig.contentColor;
        if (rGBAColor == null) {
            LogUtil.m361w("DOM.highlightNode was not given a color to highlight with");
        } else {
            this.mDocument.postAndWait(new Runnable() { // from class: com.facebook.stetho.inspector.protocol.module.DOM.2
                @Override // java.lang.Runnable
                public void run() {
                    Object elementForNodeId = DOM.this.mDocument.getElementForNodeId(highlightNodeRequest.nodeId.intValue());
                    if (elementForNodeId != null) {
                        DOM.this.mDocument.highlightElement(elementForNodeId, rGBAColor.getColor());
                    }
                }
            });
        }
    }

    @ChromeDevtoolsMethod
    public PerformSearchResponse performSearch(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        final PerformSearchRequest performSearchRequest = (PerformSearchRequest) this.mObjectMapper.convertValue(jSONObject, PerformSearchRequest.class);
        final ArrayListAccumulator arrayListAccumulator = new ArrayListAccumulator();
        this.mDocument.postAndWait(new Runnable() { // from class: com.facebook.stetho.inspector.protocol.module.DOM.7
            @Override // java.lang.Runnable
            public void run() {
                DOM.this.mDocument.findMatchingElements(performSearchRequest.query, arrayListAccumulator);
            }
        });
        String valueOf = String.valueOf(this.mResultCounter.getAndIncrement());
        this.mSearchResults.put(valueOf, arrayListAccumulator);
        PerformSearchResponse performSearchResponse = new PerformSearchResponse();
        performSearchResponse.searchId = valueOf;
        performSearchResponse.resultCount = arrayListAccumulator.size();
        return performSearchResponse;
    }

    @ChromeDevtoolsMethod
    public ResolveNodeResponse resolveNode(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) throws JsonRpcException {
        final ResolveNodeRequest resolveNodeRequest = (ResolveNodeRequest) this.mObjectMapper.convertValue(jSONObject, ResolveNodeRequest.class);
        Object postAndWait = this.mDocument.postAndWait(new UncheckedCallable<Object>() { // from class: com.facebook.stetho.inspector.protocol.module.DOM.4
            @Override // com.facebook.stetho.common.UncheckedCallable
            public Object call() {
                return DOM.this.mDocument.getElementForNodeId(resolveNodeRequest.nodeId);
            }
        });
        if (postAndWait == null) {
            JsonRpcError.ErrorCode errorCode = JsonRpcError.ErrorCode.INVALID_PARAMS;
            throw new JsonRpcException(new JsonRpcError(errorCode, "No known nodeId=" + resolveNodeRequest.nodeId, null));
        }
        int mapObject = Runtime.mapObject(jsonRpcPeer, postAndWait);
        Runtime.RemoteObject remoteObject = new Runtime.RemoteObject();
        remoteObject.type = Runtime.ObjectType.OBJECT;
        remoteObject.subtype = Runtime.ObjectSubType.NODE;
        remoteObject.className = postAndWait.getClass().getName();
        remoteObject.value = null;
        remoteObject.description = null;
        remoteObject.objectId = String.valueOf(mapObject);
        ResolveNodeResponse resolveNodeResponse = new ResolveNodeResponse();
        resolveNodeResponse.object = remoteObject;
        return resolveNodeResponse;
    }

    @ChromeDevtoolsMethod
    public void setAttributesAsText(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        final SetAttributesAsTextRequest setAttributesAsTextRequest = (SetAttributesAsTextRequest) this.mObjectMapper.convertValue(jSONObject, SetAttributesAsTextRequest.class);
        this.mDocument.postAndWait(new Runnable() { // from class: com.facebook.stetho.inspector.protocol.module.DOM.5
            @Override // java.lang.Runnable
            public void run() {
                Object elementForNodeId = DOM.this.mDocument.getElementForNodeId(setAttributesAsTextRequest.nodeId);
                if (elementForNodeId != null) {
                    DOM.this.mDocument.setAttributesAsText(elementForNodeId, setAttributesAsTextRequest.text);
                }
            }
        });
    }

    @ChromeDevtoolsMethod
    public void setInspectModeEnabled(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        final SetInspectModeEnabledRequest setInspectModeEnabledRequest = (SetInspectModeEnabledRequest) this.mObjectMapper.convertValue(jSONObject, SetInspectModeEnabledRequest.class);
        this.mDocument.postAndWait(new Runnable() { // from class: com.facebook.stetho.inspector.protocol.module.DOM.6
            @Override // java.lang.Runnable
            public void run() {
                DOM.this.mDocument.setInspectModeEnabled(setInspectModeEnabledRequest.enabled);
            }
        });
    }
}
