package com.callapp.contacts.activity.contact.cards;

import android.graphics.SurfaceTexture;
import android.telecom.Call;
import android.telecom.InCallService;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.cards.framework.DefaultListObject;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.CLog;
import it.gmariotti.cardslib.library.a.b;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/VideoCallCard.class */
public class VideoCallCard extends ContactCard<VideoCallViewHolder, VideoCallObject> implements TextureView.SurfaceTextureListener, View.OnAttachStateChangeListener, CallStateListener {
    private static final int DIMENSIONS_NOT_SET = 0;
    private static final int SURFACE_DISPLAY = 1;
    private static final int SURFACE_PREVIEW = 2;
    private CallData currentData;
    private boolean isDoneWithSurface;
    private Surface savedSurface;
    private SurfaceTexture savedSurfaceTexture;
    private TextureView videoTextureView;
    private CallState currentCallState = CallState.PRE_CALL;
    private int surfaceId = 0;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallObject.class */
    public static class VideoCallObject extends DefaultListObject {
        private VideoCallObject(b bVar) {
            super(bVar);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass();
        }

        public int hashCode() {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder.class */
    public class VideoCallViewHolder {

        /* renamed from: b  reason: collision with root package name */
        private final TextureView f11803b;

        public VideoCallViewHolder(View view) {
            this.f11803b = (TextureView) view.findViewById(2131364511);
        }
    }

    public VideoCallCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558740);
        presentersContainer.addCallStateListener(this);
    }

    private boolean createSurface(int i, int i2) {
        SurfaceTexture surfaceTexture;
        InCallService.VideoCall videoCall;
        CLog.a(VideoCallCard.class, "createSurface savedSurfaceTexture=" + this.savedSurfaceTexture + " surfaceId =" + this.surfaceId + " mWidth " + i + " mHeight=" + i2);
        if (i == 0 || i2 == 0 || (surfaceTexture = this.savedSurfaceTexture) == null) {
            return false;
        }
        surfaceTexture.setDefaultBufferSize(i, i2);
        this.savedSurface = new Surface(this.savedSurfaceTexture);
        Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(this.currentData);
        if (telecomCallFromCallData == null || (videoCall = telecomCallFromCallData.getVideoCall()) == null) {
            return false;
        }
        videoCall.setPreviewSurface(this.savedSurface);
        return true;
    }

    private void destroy() {
        hideCard();
        Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(this.currentData);
        if (!(telecomCallFromCallData == null || telecomCallFromCallData.getVideoCall() == null)) {
            telecomCallFromCallData.getVideoCall().setPreviewSurface(null);
            telecomCallFromCallData.getVideoCall().setDisplaySurface(null);
        }
        this.currentData = null;
        this.currentCallState = CallState.PRE_CALL;
        setDoneWithSurface();
    }

    private boolean isVideoCall(CallData callData) {
        Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(callData);
        return telecomCallFromCallData != null && telecomCallFromCallData.getDetails().getVideoState() == 3;
    }

    private void setDoneWithSurface() {
        CLog.a(VideoCallCard.class, "setDoneWithSurface: SavedSurface=" + this.savedSurface + " SavedSurfaceTexture=" + this.savedSurfaceTexture);
        this.isDoneWithSurface = true;
        Surface surface = this.savedSurface;
        if (surface != null) {
            surface.release();
            this.savedSurface = null;
        }
        SurfaceTexture surfaceTexture = this.savedSurfaceTexture;
        if (surfaceTexture != null) {
            surfaceTexture.release();
            this.savedSurfaceTexture = null;
        }
    }

    private void updateVideoCall() {
        if (this.currentCallState.isRinging()) {
            CLog.a(VideoCallCard.class, " setPreviewSurface");
            this.surfaceId = 2;
        } else if (this.currentCallState.isTalking()) {
            CLog.a(VideoCallCard.class, " setDisplaySurface");
            this.surfaceId = 1;
            Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(this.currentData);
            if (telecomCallFromCallData != null) {
                telecomCallFromCallData.getVideoCall().setPreviewSurface(null);
                telecomCallFromCallData.getVideoCall().setDisplaySurface(this.savedSurface);
            }
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return CallAppApplication.get().getResources().getDimensionPixelSize(2131166138);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(VideoCallViewHolder videoCallViewHolder) {
        CLog.a(VideoCallCard.class, "onBindViewHolder");
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if (isVideoCall(callData)) {
            CallState state = callData.getState();
            this.currentCallState = state;
            this.currentData = callData;
            if (state.isPostCall()) {
                CLog.a(VideoCallCard.class, "post call hide card");
                destroy();
                return;
            }
            TextureView textureView = this.videoTextureView;
            if (textureView == null || !textureView.isAvailable()) {
                showCard(false);
            } else {
                updateVideoCall();
                CLog.a(VideoCallCard.class, "updateVideoCall " + callData.getState());
            }
            CLog.a(VideoCallCard.class, "onCallStateChanged " + callData.getState());
        } else if (callData.getState().isPostCall()) {
            destroy();
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public VideoCallViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        CLog.a(VideoCallCard.class, "onCreateViewHolder");
        VideoCallViewHolder videoCallViewHolder = new VideoCallViewHolder(viewGroup);
        TextureView textureView = videoCallViewHolder.f11803b;
        this.videoTextureView = textureView;
        textureView.setSurfaceTextureListener(this);
        return videoCallViewHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        destroy();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        boolean z;
        if (!this.isDoneWithSurface) {
            CLog.a(VideoCallCard.class, " onSurfaceTextureAvailable surfaceId=" + this.surfaceId + " surfaceTexture=" + surfaceTexture + " width=" + i + " height=" + i2 + " savedSurfaceTexture=" + this.savedSurfaceTexture);
            if (this.savedSurfaceTexture == null) {
                this.savedSurfaceTexture = surfaceTexture;
                z = createSurface(i, i2);
            } else {
                CLog.a(VideoCallCard.class, " onSurfaceTextureAvailable: Replacing with cached surface...");
                this.videoTextureView.setSurfaceTexture(this.savedSurfaceTexture);
                z = true;
            }
            if (z) {
                updateVideoCall();
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        CLog.a(VideoCallCard.class, " onSurfaceTextureDestroyed surfaceId=" + this.surfaceId + " surfaceTexture=" + surfaceTexture + " SavedSurfaceTexture=" + this.savedSurfaceTexture + " SavedSurface=" + this.savedSurface);
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(VideoCallObject videoCallObject, boolean z) {
    }
}
