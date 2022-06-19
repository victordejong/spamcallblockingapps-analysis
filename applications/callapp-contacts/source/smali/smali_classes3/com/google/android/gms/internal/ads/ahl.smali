.class final Lcom/google/android/gms/internal/ads/ahl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cnd;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/gms/internal/ads/zzvt;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/ago;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ago;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahl;->d:Lcom/google/android/gms/internal/ads/ago;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ago;Lcom/google/android/gms/internal/ads/agn;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ahl;-><init>(Lcom/google/android/gms/internal/ads/ago;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/cmz;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahl;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahl;->b:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahl;->c:Lcom/google/android/gms/internal/ads/zzvt;

    const-class v1, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/aho;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ahl;->d:Lcom/google/android/gms/internal/ads/ago;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ahl;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ahl;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ahl;->c:Lcom/google/android/gms/internal/ads/zzvt;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/aho;-><init>(Lcom/google/android/gms/internal/ads/ago;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/agn;)V

    return-object v0
.end method

.method public final synthetic a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/cnd;
    .locals 0

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahl;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/zzvt;)Lcom/google/android/gms/internal/ads/cnd;
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahl;->c:Lcom/google/android/gms/internal/ads/zzvt;

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cnd;
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahl;->b:Ljava/lang/String;

    return-object p0
.end method
