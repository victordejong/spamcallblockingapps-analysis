.class public final Lcom/google/firebase/analytics/connector/internal/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@17.4.2"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_in"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_xa"

    aput-object v2, v1, v5

    const-string/jumbo v2, "_xu"

    aput-object v2, v1, v6

    const-string/jumbo v2, "_aq"

    aput-object v2, v1, v7

    const-string/jumbo v2, "_aa"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "_ai"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "_ac"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "campaign_details"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "_ug"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "_iapx"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "_exp_set"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "_exp_clear"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "_exp_activate"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "_exp_timeout"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "_exp_expire"

    aput-object v3, v1, v2

    .line 152
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/b;->a:Ljava/util/Set;

    .line 153
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_e"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_f"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_iap"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_s"

    aput-object v1, v0, v7

    const-string/jumbo v1, "_au"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string/jumbo v2, "_ui"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "_cd"

    aput-object v2, v0, v1

    .line 154
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/b;->b:Ljava/util/List;

    .line 155
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "auto"

    aput-object v1, v0, v4

    const-string/jumbo v1, "app"

    aput-object v1, v0, v5

    const-string/jumbo v1, "am"

    aput-object v1, v0, v6

    .line 156
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/b;->c:Ljava/util/List;

    .line 157
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_r"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_dbg"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/b;->d:Ljava/util/List;

    .line 158
    new-array v0, v6, [[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$a;->a:[Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$a;->b:[Ljava/lang/String;

    aput-object v1, v0, v5

    .line 159
    invoke-static {v0}, Lcom/google/android/gms/common/util/b;->a([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 160
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/b;->e:Ljava/util/List;

    .line 161
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "^_ltv_[A-Z]{3}$"

    aput-object v1, v0, v4

    const-string/jumbo v1, "^_cc[1-5]{1}$"

    aput-object v1, v0, v5

    .line 162
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/b;->f:Ljava/util/List;

    .line 163
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/b;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/b;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 9
    :goto_0
    return v0

    .line 4
    :cond_0
    if-eqz p1, :cond_2

    .line 5
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 7
    goto :goto_0

    .line 9
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    const-string/jumbo v0, "_cmp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 66
    :goto_0
    return v0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-nez p2, :cond_2

    move v0, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_4
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_5
    :goto_1
    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 66
    goto :goto_0

    .line 59
    :sswitch_0
    const-string/jumbo v3, "fcm"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "fdl"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "fiam"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    .line 60
    :pswitch_0
    const-string/jumbo v0, "_cis"

    const-string/jumbo v2, "fcm_integration"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 61
    goto :goto_0

    .line 62
    :pswitch_1
    const-string/jumbo v0, "_cis"

    const-string/jumbo v2, "fdl_integration"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 63
    goto :goto_0

    .line 64
    :pswitch_2
    const-string/jumbo v0, "_cis"

    const-string/jumbo v2, "fiam_integration"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 65
    goto :goto_0

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x18b50 -> :sswitch_0
        0x18b6e -> :sswitch_1
        0x2ff42f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 147
    const-string/jumbo v0, "clx"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v0, "_ae"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "_r"

    const-wide/16 v2, 0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    :cond_0
    return-void
.end method
