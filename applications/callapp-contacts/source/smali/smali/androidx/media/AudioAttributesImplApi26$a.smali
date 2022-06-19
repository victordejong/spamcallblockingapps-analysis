.class final Landroidx/media/AudioAttributesImplApi26$a;
.super Landroidx/media/AudioAttributesImplApi21$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesImplApi26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroidx/media/AudioAttributesImplApi21$a;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroidx/media/AudioAttributesImplApi21$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private f(I)Landroidx/media/AudioAttributesImplApi26$a;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi26$a;->a:Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    return-object p0
.end method


# virtual methods
.method public final synthetic a(I)Landroidx/media/AudioAttributesImpl$a;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroidx/media/AudioAttributesImplApi26$a;->f(I)Landroidx/media/AudioAttributesImplApi26$a;

    move-result-object p1

    return-object p1
.end method

.method public final a()Landroidx/media/AudioAttributesImpl;
    .locals 2

    .line 65
    new-instance v0, Landroidx/media/AudioAttributesImplApi26;

    iget-object v1, p0, Landroidx/media/AudioAttributesImplApi26$a;->a:Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media/AudioAttributesImplApi26;-><init>(Landroid/media/AudioAttributes;)V

    return-object v0
.end method

.method public final synthetic e(I)Landroidx/media/AudioAttributesImplApi21$a;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroidx/media/AudioAttributesImplApi26$a;->f(I)Landroidx/media/AudioAttributesImplApi26$a;

    move-result-object p1

    return-object p1
.end method
