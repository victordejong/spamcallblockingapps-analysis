.class public final Lcom/google/android/gms/internal/ads/i91;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/f91;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/sz1;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/sl1;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/zzbbq;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/do;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/sz1;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/sl1;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/zzbbq;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/do;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i91;->a:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i91;->b:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/i91;->c:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/i91;->d:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jh2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i91;->b:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v1, Lcom/google/android/gms/internal/ads/i70;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/i70;->a()Lcom/google/android/gms/internal/ads/sl1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i91;->c:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v2, Lcom/google/android/gms/internal/ads/tv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/tv;->a()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i91;->d:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v3, Lcom/google/android/gms/internal/ads/xm1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xm1;->a()Lcom/google/android/gms/internal/ads/do;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/f91;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/f91;-><init>(Lcom/google/android/gms/internal/ads/sz1;Lcom/google/android/gms/internal/ads/sl1;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/do;)V

    return-object v4
.end method
