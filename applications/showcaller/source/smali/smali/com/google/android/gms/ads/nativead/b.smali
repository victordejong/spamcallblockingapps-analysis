.class public final Lcom/google/android/gms/ads/nativead/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/nativead/b$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:Lcom/google/android/gms/ads/t;

.field private final f:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/nativead/b$a;Lcom/google/android/gms/ads/nativead/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/b$a;->h(Lcom/google/android/gms/ads/nativead/b$a;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/b;->a:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/b$a;->i(Lcom/google/android/gms/ads/nativead/b$a;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/ads/nativead/b;->b:I

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/b$a;->j(Lcom/google/android/gms/ads/nativead/b$a;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/b;->c:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/b$a;->l(Lcom/google/android/gms/ads/nativead/b$a;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/ads/nativead/b;->d:I

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/b$a;->k(Lcom/google/android/gms/ads/nativead/b$a;)Lcom/google/android/gms/ads/t;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/nativead/b;->e:Lcom/google/android/gms/ads/t;

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/b$a;->m(Lcom/google/android/gms/ads/nativead/b$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/b;->f:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/nativead/b;->d:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/nativead/b;->b:I

    return v0
.end method

.method public c()Lcom/google/android/gms/ads/t;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/b;->e:Lcom/google/android/gms/ads/t;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/b;->c:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/b;->a:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/b;->f:Z

    return v0
.end method
