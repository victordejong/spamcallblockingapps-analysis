.class public final Lcom/google/android/gms/internal/ads/axf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dht",
        "<",
        "Lcom/google/android/gms/internal/ads/axg;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/sx;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/ta;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/sx;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/ta;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axf;->a:Lcom/google/android/gms/internal/ads/dig;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/axf;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/axf;->c:Lcom/google/android/gms/internal/ads/dig;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/axf;->d:Lcom/google/android/gms/internal/ads/dig;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/axf;->e:Lcom/google/android/gms/internal/ads/dig;

    .line 7
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/axf;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/sx;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/ta;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$a$a;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/axf;"
        }
    .end annotation

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/axf;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/axf;-><init>(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axf;->a:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/sx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axf;->b:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axf;->c:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ta;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axf;->d:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axf;->e:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/axg;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/axg;-><init>(Lcom/google/android/gms/internal/ads/sx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ta;Landroid/view/View;Lcom/google/android/gms/internal/ads/dwv$a$a;)V

    .line 12
    return-object v0
.end method
