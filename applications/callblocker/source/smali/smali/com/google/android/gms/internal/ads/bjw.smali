.class final Lcom/google/android/gms/internal/ads/bjw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<",
        "Lcom/google/android/gms/internal/ads/chd;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bjr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bjr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bjw;->a:Lcom/google/android/gms/internal/ads/bjr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/chd;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->da:Lcom/google/android/gms/internal/ads/ect;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjw;->a:Lcom/google/android/gms/internal/ads/bjr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bjr;->a(Lcom/google/android/gms/internal/ads/bjr;)Lcom/google/android/gms/internal/ads/bmg;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    iget v1, v1, Lcom/google/android/gms/internal/ads/cgs;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bmg;->a(I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjw;->a:Lcom/google/android/gms/internal/ads/bjr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bjr;->a(Lcom/google/android/gms/internal/ads/bjr;)Lcom/google/android/gms/internal/ads/bmg;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/cgs;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bmg;->a(J)V

    .line 16
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->da:Lcom/google/android/gms/internal/ads/ect;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/bjr;->a()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bjw;->a:Lcom/google/android/gms/internal/ads/bjr;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bjr;->a(Lcom/google/android/gms/internal/ads/bjr;)Lcom/google/android/gms/internal/ads/bmg;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/bmg;->a(I)V

    .line 9
    :cond_0
    return-void
.end method
