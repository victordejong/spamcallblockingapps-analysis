.class public Lcom/google/android/gms/internal/ads/buk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/buk$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/buk$a;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/buk$a;->a(Lcom/google/android/gms/internal/ads/buk$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/buk;->a:Ljava/lang/String;

    .line 3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/buk$a;Lcom/google/android/gms/internal/ads/bum;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/buk;-><init>(Lcom/google/android/gms/internal/ads/buk$a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/buk;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/buk;->a:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/dwv$a$a;
    .locals 3

    .prologue
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/buk;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->a:Lcom/google/android/gms/internal/ads/dwv$a$a;

    :goto_1
    return-object v0

    .line 8
    :sswitch_0
    const-string/jumbo v2, "BANNER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "INTERSTITIAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "NATIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "REWARDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 9
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->b:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_1

    .line 10
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->c:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_1

    .line 11
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->d:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_1

    .line 12
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$a$a;->e:Lcom/google/android/gms/internal/ads/dwv$a$a;

    goto :goto_1

    .line 8
    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_2
        -0x51d5b0d4 -> :sswitch_1
        0x205e3c0e -> :sswitch_3
        0x7458732c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
