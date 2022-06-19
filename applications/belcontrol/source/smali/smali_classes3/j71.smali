.class public Lj71;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj71$a;
    }
.end annotation


# static fields
.field public static final c:Lj71;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj71$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/telecom/CallAudioState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj71;

    invoke-direct {v0}, Lj71;-><init>()V

    sput-object v0, Lj71;->c:Lj71;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj71;->a:Ljava/util/List;

    new-instance v0, Landroid/telecom/CallAudioState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Landroid/telecom/CallAudioState;-><init>(ZII)V

    iput-object v0, p0, Lj71;->b:Landroid/telecom/CallAudioState;

    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 8

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v1, :cond_2

    aget-object v6, p0, v2

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    const/4 v7, 0x7

    if-eq v6, v7, :cond_0

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    return v0

    :cond_3
    if-eqz v4, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    return v5
.end method

.method public static d()Lj71;
    .locals 1

    sget-object v0, Lj71;->c:Lj71;

    return-object v0
.end method


# virtual methods
.method public a(Lj71$a;)V
    .locals 1

    iget-object v0, p0, Lj71;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj71;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lj71;->b:Landroid/telecom/CallAudioState;

    invoke-interface {p1, v0}, Lj71$a;->d(Landroid/telecom/CallAudioState;)V

    :cond_0
    return-void
.end method

.method public c()Landroid/telecom/CallAudioState;
    .locals 1

    iget-object v0, p0, Lj71;->b:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public e(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/telecom/CallAudioState;

    invoke-static {p1}, Lj71;->b(Landroid/content/Context;)I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-direct {v0, v1, p1, v2}, Landroid/telecom/CallAudioState;-><init>(ZII)V

    invoke-virtual {p0, v0}, Lj71;->f(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public f(Landroid/telecom/CallAudioState;)V
    .locals 2

    iget-object v0, p0, Lj71;->b:Landroid/telecom/CallAudioState;

    invoke-virtual {v0, p1}, Landroid/telecom/CallAudioState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lj71;->b:Landroid/telecom/CallAudioState;

    iget-object v0, p0, Lj71;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj71$a;

    invoke-interface {v1, p1}, Lj71$a;->d(Landroid/telecom/CallAudioState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lj71$a;)V
    .locals 1

    iget-object v0, p0, Lj71;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
