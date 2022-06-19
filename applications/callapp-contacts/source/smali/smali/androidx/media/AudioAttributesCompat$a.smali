.class public final Landroidx/media/AudioAttributesCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/media/AudioAttributesImpl$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    sget-boolean v0, Landroidx/media/AudioAttributesCompat;->a:Z

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Landroidx/media/AudioAttributesImplBase$a;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplBase$a;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    return-void

    .line 376
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 377
    new-instance v0, Landroidx/media/AudioAttributesImplApi26$a;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi26$a;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    return-void

    .line 378
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 379
    new-instance v0, Landroidx/media/AudioAttributesImplApi21$a;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi21$a;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    return-void

    .line 381
    :cond_2
    new-instance v0, Landroidx/media/AudioAttributesImplBase$a;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplBase$a;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    return-void
.end method

.method public constructor <init>(Landroidx/media/AudioAttributesCompat;)V
    .locals 2

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    sget-boolean v0, Landroidx/media/AudioAttributesCompat;->a:Z

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Landroidx/media/AudioAttributesImplBase$a;

    invoke-direct {v0, p1}, Landroidx/media/AudioAttributesImplBase$a;-><init>(Landroidx/media/AudioAttributesCompat;)V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    return-void

    .line 393
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 394
    new-instance v0, Landroidx/media/AudioAttributesImplApi26$a;

    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media/AudioAttributesImplApi26$a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    return-void

    .line 395
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 396
    new-instance v0, Landroidx/media/AudioAttributesImplApi21$a;

    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media/AudioAttributesImplApi21$a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    return-void

    .line 398
    :cond_2
    new-instance v0, Landroidx/media/AudioAttributesImplBase$a;

    invoke-direct {v0, p1}, Landroidx/media/AudioAttributesImplBase$a;-><init>(Landroidx/media/AudioAttributesCompat;)V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/media/AudioAttributesCompat$a;
    .locals 1

    .line 435
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    invoke-interface {v0, p1}, Landroidx/media/AudioAttributesImpl$a;->a(I)Landroidx/media/AudioAttributesImpl$a;

    return-object p0
.end method

.method public final a()Landroidx/media/AudioAttributesCompat;
    .locals 2

    .line 409
    new-instance v0, Landroidx/media/AudioAttributesCompat;

    iget-object v1, p0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    invoke-interface {v1}, Landroidx/media/AudioAttributesImpl$a;->a()Landroidx/media/AudioAttributesImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media/AudioAttributesCompat;-><init>(Landroidx/media/AudioAttributesImpl;)V

    return-object v0
.end method

.method public final b(I)Landroidx/media/AudioAttributesCompat$a;
    .locals 1

    .line 452
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    invoke-interface {v0, p1}, Landroidx/media/AudioAttributesImpl$a;->b(I)Landroidx/media/AudioAttributesImpl$a;

    return-object p0
.end method

.method public final c(I)Landroidx/media/AudioAttributesCompat$a;
    .locals 1

    .line 486
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat$a;->a:Landroidx/media/AudioAttributesImpl$a;

    invoke-interface {v0, p1}, Landroidx/media/AudioAttributesImpl$a;->d(I)Landroidx/media/AudioAttributesImpl$a;

    return-object p0
.end method
