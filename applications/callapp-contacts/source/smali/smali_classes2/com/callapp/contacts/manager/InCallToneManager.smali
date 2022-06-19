.class public Lcom/callapp/contacts/manager/InCallToneManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/media/ToneGenerator;

.field public final b:Ljava/lang/Object;

.field private final c:Lcom/callapp/contacts/inCallService/TelecomAdapter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/InCallToneManager;->b:Ljava/lang/Object;

    .line 21
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/InCallToneManager;->a:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    const-class v1, Lcom/callapp/contacts/manager/InCallToneManager;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_0
    const/16 v0, 0x17

    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/callapp/contacts/manager/InCallToneManager;->c:Lcom/callapp/contacts/inCallService/TelecomAdapter;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/callapp/contacts/manager/InCallToneManager;->a:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    const/16 v1, 0x96

    .line 31
    invoke-virtual {v0, p1, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/telecom/Call;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/manager/InCallToneManager;->c:Lcom/callapp/contacts/inCallService/TelecomAdapter;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->e(Landroid/telecom/Call;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/telecom/Call;C)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/manager/InCallToneManager;->c:Lcom/callapp/contacts/inCallService/TelecomAdapter;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/telecom/Call;C)V

    :cond_0
    return-void
.end method
