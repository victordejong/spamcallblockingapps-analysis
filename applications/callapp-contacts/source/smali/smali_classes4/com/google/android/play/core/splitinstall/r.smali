.class public final Lcom/google/android/play/core/splitinstall/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/ab;


# instance fields
.field private a:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/ah;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/ae;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/o;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/ak;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/x;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/play/core/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/be<",
            "Lcom/google/android/play/core/splitinstall/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/am;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/splitinstall/an;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/an;-><init>(Lcom/google/android/play/core/splitinstall/am;)V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->a:Lcom/google/android/play/core/internal/be;

    new-instance v1, Lcom/google/android/play/core/splitinstall/p;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/play/core/splitinstall/p;-><init>(Lcom/google/android/play/core/internal/be;[B)V

    invoke-static {v1}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->b:Lcom/google/android/play/core/internal/be;

    new-instance v0, Lcom/google/android/play/core/splitinstall/f;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/f;-><init>(Lcom/google/android/play/core/splitinstall/am;)V

    invoke-static {v0}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->c:Lcom/google/android/play/core/internal/be;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->a:Lcom/google/android/play/core/internal/be;

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/j;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/appupdate/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->d:Lcom/google/android/play/core/internal/be;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->a:Lcom/google/android/play/core/internal/be;

    new-instance v1, Lcom/google/android/play/core/splitinstall/p;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/splitinstall/p;-><init>(Lcom/google/android/play/core/internal/be;)V

    invoke-static {v1}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->e:Lcom/google/android/play/core/internal/be;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/r;->b:Lcom/google/android/play/core/internal/be;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/r;->c:Lcom/google/android/play/core/internal/be;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/r;->d:Lcom/google/android/play/core/internal/be;

    new-instance v4, Lcom/google/android/play/core/splitinstall/al;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/google/android/play/core/splitinstall/al;-><init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;)V

    invoke-static {v4}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->f:Lcom/google/android/play/core/internal/be;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->a:Lcom/google/android/play/core/internal/be;

    new-instance v1, Lcom/google/android/play/core/splitinstall/ao;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/splitinstall/ao;-><init>(Lcom/google/android/play/core/internal/be;)V

    invoke-static {v1}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->g:Lcom/google/android/play/core/internal/be;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/r;->a:Lcom/google/android/play/core/internal/be;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/r;->d:Lcom/google/android/play/core/internal/be;

    new-instance v3, Lcom/google/android/play/core/splitinstall/a/k;

    invoke-direct {v3, v1, v0, v2}, Lcom/google/android/play/core/splitinstall/a/k;-><init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;)V

    invoke-static {v3}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->h:Lcom/google/android/play/core/internal/be;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/r;->f:Lcom/google/android/play/core/internal/be;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/r;->g:Lcom/google/android/play/core/internal/be;

    new-instance v3, Lcom/google/android/play/core/splitinstall/y;

    invoke-direct {v3, v1, v0, v2}, Lcom/google/android/play/core/splitinstall/y;-><init>(Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;Lcom/google/android/play/core/internal/be;)V

    invoke-static {v3}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->i:Lcom/google/android/play/core/internal/be;

    new-instance v1, Lcom/google/android/play/core/splitinstall/g;

    invoke-direct {v1, p1, v0}, Lcom/google/android/play/core/splitinstall/g;-><init>(Lcom/google/android/play/core/splitinstall/am;Lcom/google/android/play/core/internal/be;)V

    invoke-static {v1}, Lcom/google/android/play/core/internal/bc;->a(Lcom/google/android/play/core/internal/be;)Lcom/google/android/play/core/internal/be;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/r;->j:Lcom/google/android/play/core/internal/be;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/splitinstall/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->j:Lcom/google/android/play/core/internal/be;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/be;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/a;

    return-object v0
.end method
