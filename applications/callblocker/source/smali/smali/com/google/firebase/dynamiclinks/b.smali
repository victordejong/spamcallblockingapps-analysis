.class public Lcom/google/firebase/dynamiclinks/b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# instance fields
.field private final a:Lcom/google/firebase/dynamiclinks/internal/a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/dynamiclinks/internal/a;)V
    .locals 4

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/b;->a:Lcom/google/firebase/dynamiclinks/internal/a;

    .line 9
    :goto_0
    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/internal/a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lcom/google/android/gms/common/util/h;->d()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/dynamiclinks/internal/a;->a(J)V

    .line 8
    :cond_1
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/b;->a:Lcom/google/firebase/dynamiclinks/internal/a;

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 16
    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/b;->a:Lcom/google/firebase/dynamiclinks/internal/a;

    if-nez v1, :cond_1

    .line 21
    :cond_0
    :goto_0
    return-object v0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/b;->a:Lcom/google/firebase/dynamiclinks/internal/a;

    invoke-virtual {v1}, Lcom/google/firebase/dynamiclinks/internal/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
