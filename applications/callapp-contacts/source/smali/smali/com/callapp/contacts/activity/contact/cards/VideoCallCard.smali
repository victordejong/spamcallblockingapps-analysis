.class public Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallObject;,
        Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallObject;",
        ">;",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "Lcom/callapp/contacts/manager/phone/CallStateListener;"
    }
.end annotation


# static fields
.field private static final DIMENSIONS_NOT_SET:I = 0x0

.field private static final SURFACE_DISPLAY:I = 0x1

.field private static final SURFACE_PREVIEW:I = 0x2


# instance fields
.field private currentCallState:Lcom/callapp/contacts/model/call/CallState;

.field private currentData:Lcom/callapp/contacts/model/call/CallData;

.field private isDoneWithSurface:Z

.field private savedSurface:Landroid/view/Surface;

.field private savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private surfaceId:I

.field private videoTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0154

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 37
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->currentCallState:Lcom/callapp/contacts/model/call/CallState;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->surfaceId:I

    .line 52
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method private createSurface(II)Z
    .locals 3

    .line 148
    const-class v0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createSurface savedSurfaceTexture="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " surfaceId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->surfaceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 149
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 151
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurface:Landroid/view/Surface;

    .line 152
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->currentData:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurface:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private destroy()V
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->hideCard()V

    .line 110
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->currentData:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    .line 113
    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    .line 115
    :cond_0
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->currentData:Lcom/callapp/contacts/model/call/CallData;

    .line 116
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->currentCallState:Lcom/callapp/contacts/model/call/CallState;

    .line 118
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->setDoneWithSurface()V

    return-void
.end method

.method private isVideoCall(Lcom/callapp/contacts/model/call/CallData;)Z
    .locals 1

    .line 104
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setDoneWithSurface()V
    .locals 3

    .line 224
    const-class v0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDoneWithSurface: SavedSurface="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " SavedSurfaceTexture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->isDoneWithSurface:Z

    .line 229
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 231
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurface:Landroid/view/Surface;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 235
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method private updateVideoCall()V
    .locals 3

    .line 165
    const-class v0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->currentCallState:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " setPreviewSurface"

    .line 166
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 167
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->surfaceId:I

    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->currentCallState:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->isTalking()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " setDisplaySurface"

    .line 170
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 171
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->surfaceId:I

    .line 172
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->currentData:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    .line 175
    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCardInitHeight()I
    .locals 2

    .line 77
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;)V
    .locals 1

    .line 133
    const-class p1, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;

    const-string v0, "onBindViewHolder"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;)V

    return-void
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 3

    .line 82
    const-class v0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->isVideoCall(Lcom/callapp/contacts/model/call/CallData;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->currentCallState:Lcom/callapp/contacts/model/call/CallState;

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->currentData:Lcom/callapp/contacts/model/call/CallData;

    .line 85
    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "post call hide card"

    .line 86
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->destroy()V

    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->videoTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->updateVideoCall()V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateVideoCall "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->showCard(Z)V

    .line 95
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStateChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 98
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->destroy()V

    :cond_3
    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;
    .locals 2

    .line 123
    const-class v0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;

    const-string v1, "onCreateViewHolder"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;Landroid/view/View;)V

    .line 126
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;)Landroid/view/TextureView;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->videoTextureView:Landroid/view/TextureView;

    .line 127
    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 182
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onDestroy()V

    .line 184
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->destroy()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 198
    const-class v0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->isDoneWithSurface:Z

    if-nez v1, :cond_1

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onSurfaceTextureAvailable surfaceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->surfaceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " surfaceTexture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " savedSurfaceTexture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_0

    .line 204
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 205
    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->createSurface(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, " onSurfaceTextureAvailable: Replacing with cached surface..."

    .line 208
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->videoTextureView:Landroid/view/TextureView;

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->updateVideoCall()V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 247
    const-class v0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onSurfaceTextureDestroyed surfaceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->surfaceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " surfaceTexture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " SavedSurfaceTexture="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " SavedSurface="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->savedSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCardData(Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallObject;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 34
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallObject;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallObject;Z)V

    return-void
.end method
