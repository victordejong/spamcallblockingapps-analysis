.class public Lcom/callapp/contacts/inCallService/AudioModeProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;
    }
.end annotation


# static fields
.field public static c:[I

.field private static d:Lcom/callapp/contacts/inCallService/AudioModeProvider;


# instance fields
.field public a:I

.field public b:Landroid/telecom/CallAudioState;

.field private e:I

.field private f:Z

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/callapp/contacts/inCallService/AudioModeProvider;

    invoke-direct {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;-><init>()V

    sput-object v0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->d:Lcom/callapp/contacts/inCallService/AudioModeProvider;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_0

    sput-object v0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->c:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->e:I

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->f:Z

    const/16 v2, 0xf

    .line 25
    iput v2, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->a:I

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->g:Ljava/util/List;

    .line 37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 38
    new-instance v3, Landroid/telecom/CallAudioState;

    invoke-direct {v3, v1, v0, v2}, Landroid/telecom/CallAudioState;-><init>(ZII)V

    iput-object v3, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b:Landroid/telecom/CallAudioState;

    :cond_0
    return-void
.end method

.method public static get()Lcom/callapp/contacts/inCallService/AudioModeProvider;
    .locals 1

    .line 43
    sget-object v0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->d:Lcom/callapp/contacts/inCallService/AudioModeProvider;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/telecom/CallAudioState;Z)V
    .locals 3

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    iget-object v1, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b:Landroid/telecom/CallAudioState;

    invoke-virtual {v1, p1}, Landroid/telecom/CallAudioState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b:Landroid/telecom/CallAudioState;

    .line 64
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->e:I

    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;

    .line 66
    iget v2, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->e:I

    invoke-interface {v1, v2}, Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;->onAudioMode(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget-boolean p1, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->f:Z

    if-eq p1, p2, :cond_1

    .line 70
    iput-boolean p2, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->f:Z

    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;

    .line 72
    iget-boolean v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->f:Z

    invoke-interface {p2, v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;->onMute(Z)V

    goto :goto_1

    .line 75
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getConnectingOrActiveCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 76
    invoke-static {}, Lcom/callapp/contacts/manager/ProximityManager;->get()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/ProximityManager;->b()V

    .line 77
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/NotificationManager;->e()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->e:I

    invoke-interface {p1, v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;->onAudioMode(I)V

    .line 101
    iget-boolean v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->f:Z

    invoke-interface {p1, v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;->onMute(Z)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAudioMode()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->e:I

    return v0
.end method

.method public getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->f:Z

    return v0
.end method

.method public getSupportedModes()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->a:I

    return v0
.end method

.method public isAnyBluetoothConnected()Z
    .locals 2

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b:Landroid/telecom/CallAudioState;

    .line 83
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedBluetoothDevices()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b:Landroid/telecom/CallAudioState;

    .line 84
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedBluetoothDevices()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothOn()Z
    .locals 2

    .line 124
    iget v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHeadSetOn()Z
    .locals 2

    .line 120
    iget v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMoreThenOneBluetoothDevices()Z
    .locals 2

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b:Landroid/telecom/CallAudioState;

    .line 89
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedBluetoothDevices()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b:Landroid/telecom/CallAudioState;

    .line 90
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedBluetoothDevices()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSpeakerOn()Z
    .locals 2

    .line 128
    iget v0, p0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->e:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
