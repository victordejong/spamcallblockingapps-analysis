.class final Lcom/google/android/gms/internal/ads/xr1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Lcom/google/android/gms/internal/ads/rj2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/yr1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yr1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xr1;->a:Lcom/google/android/gms/internal/ads/yr1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->x4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/yr1;->c()Ljava/util/regex/Pattern;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xr1;->a:Lcom/google/android/gms/internal/ads/yr1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yr1;->b(Lcom/google/android/gms/internal/ads/yr1;)Lcom/google/android/gms/internal/ads/gv1;

    move-result-object v0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gv1;->a(I)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/rj2;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->x4:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xr1;->a:Lcom/google/android/gms/internal/ads/yr1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yr1;->b(Lcom/google/android/gms/internal/ads/yr1;)Lcom/google/android/gms/internal/ads/gv1;

    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iget v1, v1, Lcom/google/android/gms/internal/ads/jj2;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/gv1;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xr1;->a:Lcom/google/android/gms/internal/ads/yr1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yr1;->b(Lcom/google/android/gms/internal/ads/yr1;)Lcom/google/android/gms/internal/ads/gv1;

    move-result-object v0

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/jj2;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/gv1;->c(J)V

    :cond_0
    return-void
.end method
