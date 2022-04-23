package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/node/NodeCursor.class */
abstract class NodeCursor extends JsonStreamContext {
    protected String _currentName;
    protected Object _currentValue;
    protected final NodeCursor _parent;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor.class */
    protected static final class ArrayCursor extends NodeCursor {
        protected Iterator<JsonNode> _contents;
        protected JsonNode _currentElement;

        public ArrayCursor(JsonNode jsonNode, NodeCursor nodeCursor) {
            super(1, nodeCursor);
            this._contents = jsonNode.elements();
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final JsonNode currentNode() {
            return this._currentElement;
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor, com.fasterxml.jackson.core.JsonStreamContext
        public final /* bridge */ /* synthetic */ JsonStreamContext getParent() {
            return NodeCursor.super.getParent();
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final JsonToken nextToken() {
            if (!this._contents.hasNext()) {
                this._currentElement = null;
                return JsonToken.END_ARRAY;
            }
            this._index++;
            JsonNode next = this._contents.next();
            this._currentElement = next;
            return next.asToken();
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final NodeCursor startArray() {
            return new ArrayCursor(this._currentElement, this);
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final NodeCursor startObject() {
            return new ObjectCursor(this._currentElement, this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor.class */
    protected static final class ObjectCursor extends NodeCursor {
        protected Iterator<Map.Entry<String, JsonNode>> _contents;
        protected Map.Entry<String, JsonNode> _current;
        protected boolean _needEntry = true;

        public ObjectCursor(JsonNode jsonNode, NodeCursor nodeCursor) {
            super(2, nodeCursor);
            this._contents = ((ObjectNode) jsonNode).fields();
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final JsonNode currentNode() {
            Map.Entry<String, JsonNode> entry = this._current;
            if (entry == null) {
                return null;
            }
            return entry.getValue();
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor, com.fasterxml.jackson.core.JsonStreamContext
        public final /* bridge */ /* synthetic */ JsonStreamContext getParent() {
            return NodeCursor.super.getParent();
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final JsonToken nextToken() {
            if (this._needEntry) {
                String str = null;
                if (!this._contents.hasNext()) {
                    this._currentName = null;
                    this._current = null;
                    return JsonToken.END_OBJECT;
                }
                this._index++;
                this._needEntry = false;
                Map.Entry<String, JsonNode> next = this._contents.next();
                this._current = next;
                if (next != null) {
                    str = next.getKey();
                }
                this._currentName = str;
                return JsonToken.FIELD_NAME;
            }
            this._needEntry = true;
            return this._current.getValue().asToken();
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final NodeCursor startArray() {
            return new ArrayCursor(currentNode(), this);
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final NodeCursor startObject() {
            return new ObjectCursor(currentNode(), this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/node/NodeCursor$RootCursor.class */
    protected static final class RootCursor extends NodeCursor {
        protected boolean _done = false;
        protected JsonNode _node;

        public RootCursor(JsonNode jsonNode, NodeCursor nodeCursor) {
            super(0, nodeCursor);
            this._node = jsonNode;
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final JsonNode currentNode() {
            if (this._done) {
                return this._node;
            }
            return null;
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor, com.fasterxml.jackson.core.JsonStreamContext
        public final /* bridge */ /* synthetic */ JsonStreamContext getParent() {
            return NodeCursor.super.getParent();
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final JsonToken nextToken() {
            if (!this._done) {
                this._index++;
                this._done = true;
                return this._node.asToken();
            }
            this._node = null;
            return null;
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final void overrideCurrentName(String str) {
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final NodeCursor startArray() {
            return new ArrayCursor(this._node, this);
        }

        @Override // com.fasterxml.jackson.databind.node.NodeCursor
        public final NodeCursor startObject() {
            return new ObjectCursor(this._node, this);
        }
    }

    public NodeCursor(int i, NodeCursor nodeCursor) {
        this._type = i;
        this._index = -1;
        this._parent = nodeCursor;
    }

    public abstract JsonNode currentNode();

    @Override // com.fasterxml.jackson.core.JsonStreamContext
    public final String getCurrentName() {
        return this._currentName;
    }

    @Override // com.fasterxml.jackson.core.JsonStreamContext
    public Object getCurrentValue() {
        return this._currentValue;
    }

    @Override // com.fasterxml.jackson.core.JsonStreamContext
    public final NodeCursor getParent() {
        return this._parent;
    }

    public final NodeCursor iterateChildren() {
        JsonNode currentNode = currentNode();
        if (currentNode == null) {
            throw new IllegalStateException("No current node");
        } else if (currentNode.isArray()) {
            return new ArrayCursor(currentNode, this);
        } else {
            if (currentNode.isObject()) {
                return new ObjectCursor(currentNode, this);
            }
            throw new IllegalStateException("Current node of type " + currentNode.getClass().getName());
        }
    }

    public abstract JsonToken nextToken();

    public void overrideCurrentName(String str) {
        this._currentName = str;
    }

    @Override // com.fasterxml.jackson.core.JsonStreamContext
    public void setCurrentValue(Object obj) {
        this._currentValue = obj;
    }

    public abstract NodeCursor startArray();

    public abstract NodeCursor startObject();
}
