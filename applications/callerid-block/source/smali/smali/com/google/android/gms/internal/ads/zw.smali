.class final Lcom/google/android/gms/internal/ads/zw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/nh1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzyx;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/zzyx;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/f71;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/j71;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/kh1;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/android/gms/internal/ads/sx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/sx;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyx;Lcom/google/android/gms/internal/ads/gw;)V
    .locals 8

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zw;->i:Lcom/google/android/gms/internal/ads/sx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zw;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zw;->b:Lcom/google/android/gms/internal/ads/zzyx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zw;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/fh2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/eh2;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/oh2;

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/fh2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/eh2;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zw;->e:Lcom/google/android/gms/internal/ads/oh2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sx;->X(Lcom/google/android/gms/internal/ads/sx;)Lcom/google/android/gms/internal/ads/oh2;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/g71;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/g71;-><init>(Lcom/google/android/gms/internal/ads/oh2;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/dh2;->a(Lcom/google/android/gms/internal/ads/oh2;)Lcom/google/android/gms/internal/ads/oh2;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zw;->f:Lcom/google/android/gms/internal/ads/oh2;

    invoke-static {}, Lcom/google/android/gms/internal/ads/l71;->a()Lcom/google/android/gms/internal/ads/l71;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dh2;->a(Lcom/google/android/gms/internal/ads/oh2;)Lcom/google/android/gms/internal/ads/oh2;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zw;->g:Lcom/google/android/gms/internal/ads/oh2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sx;->j0(Lcom/google/android/gms/internal/ads/sx;)Lcom/google/android/gms/internal/ads/oh2;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sx;->Z(Lcom/google/android/gms/internal/ads/sx;)Lcom/google/android/gms/internal/ads/oh2;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/ul1;->a()Lcom/google/android/gms/internal/ads/ul1;

    move-result-object v7

    new-instance p1, Lcom/google/android/gms/internal/ads/lh1;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/lh1;-><init>(Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dh2;->a(Lcom/google/android/gms/internal/ads/oh2;)Lcom/google/android/gms/internal/ads/oh2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zw;->h:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/m61;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/ads/m61;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zw;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zw;->b:Lcom/google/android/gms/internal/ads/zzyx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zw;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->h:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/kh1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->f:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/f71;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/m61;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kh1;Lcom/google/android/gms/internal/ads/f71;)V

    return-object v6
.end method
