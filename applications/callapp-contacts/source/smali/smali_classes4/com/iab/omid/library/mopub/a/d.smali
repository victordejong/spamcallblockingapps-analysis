.class public final Lcom/iab/omid/library/mopub/a/d;
.super Landroid/database/ContentObserver;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:F

.field private final c:Landroid/media/AudioManager;

.field private final d:Lcom/iab/omid/library/mopub/a/a;

.field private final e:Lcom/iab/omid/library/mopub/a/c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/iab/omid/library/mopub/a/a;Lcom/iab/omid/library/mopub/a/c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/iab/omid/library/mopub/a/d;->a:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/iab/omid/library/mopub/a/d;->c:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/iab/omid/library/mopub/a/d;->d:Lcom/iab/omid/library/mopub/a/a;

    iput-object p4, p0, Lcom/iab/omid/library/mopub/a/d;->e:Lcom/iab/omid/library/mopub/a/c;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 3

    iget-object v0, p0, Lcom/iab/omid/library/mopub/a/d;->c:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v2, p0, Lcom/iab/omid/library/mopub/a/d;->c:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iab/omid/library/mopub/a/a;->a(II)F

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/mopub/a/d;->e:Lcom/iab/omid/library/mopub/a/c;

    iget v1, p0, Lcom/iab/omid/library/mopub/a/d;->b:F

    invoke-interface {v0, v1}, Lcom/iab/omid/library/mopub/a/c;->a(F)V

    return-void
.end method

.method public final onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/iab/omid/library/mopub/a/d;->a()F

    move-result p1

    .line 1000
    iget v0, p0, Lcom/iab/omid/library/mopub/a/d;->b:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput p1, p0, Lcom/iab/omid/library/mopub/a/d;->b:F

    invoke-virtual {p0}, Lcom/iab/omid/library/mopub/a/d;->b()V

    :cond_1
    return-void
.end method
