.class public final Lcom/google/android/gms/internal/ads/bre;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/eht$t$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/aqs;

.field private final c:Landroid/telephony/TelephonyManager;

.field private final d:Lcom/google/android/gms/internal/ads/brb;

.field private final e:Lcom/google/android/gms/internal/ads/bqv;

.field private final f:Lcom/google/android/gms/ads/internal/util/zzf;

.field private g:Lcom/google/android/gms/internal/ads/eid;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 93
    sput-object v0, Lcom/google/android/gms/internal/ads/bre;->h:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcex:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcew:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcew:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcew:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcey:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcez:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcez:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcez:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcez:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcez:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcfa:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 105
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcew:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcew:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aqs;Lcom/google/android/gms/internal/ads/brb;Lcom/google/android/gms/internal/ads/bqv;Lcom/google/android/gms/ads/internal/util/zzf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bre;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bre;->b:Lcom/google/android/gms/internal/ads/aqs;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bre;->d:Lcom/google/android/gms/internal/ads/brb;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bre;->e:Lcom/google/android/gms/internal/ads/bqv;

    const-string p2, "phone"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bre;->c:Landroid/telephony/TelephonyManager;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bre;->f:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bre;)Lcom/google/android/gms/ads/internal/util/zzf;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bre;->f:Lcom/google/android/gms/ads/internal/util/zzf;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bre;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/eht$r;
    .locals 4

    .line 3010
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$r;->c()Lcom/google/android/gms/internal/ads/eht$r$a;

    move-result-object v0

    const-string v1, "cnt"

    const/4 v2, -0x2

    .line 3012
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "gnt"

    const/4 v3, 0x0

    .line 3013
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3015
    sget-object p1, Lcom/google/android/gms/internal/ads/eid;->zzccm:Lcom/google/android/gms/internal/ads/eid;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bre;->g:Lcom/google/android/gms/internal/ads/eid;

    goto :goto_2

    .line 3016
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/eid;->zzccl:Lcom/google/android/gms/internal/ads/eid;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/bre;->g:Lcom/google/android/gms/internal/ads/eid;

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    if-eq v1, p0, :cond_1

    .line 3022
    sget-object p0, Lcom/google/android/gms/internal/ads/eht$r$c;->zzcdu:Lcom/google/android/gms/internal/ads/eht$r$c;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/eht$r$a;->a(Lcom/google/android/gms/internal/ads/eht$r$c;)Lcom/google/android/gms/internal/ads/eht$r$a;

    goto :goto_0

    .line 3018
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/eht$r$c;->zzcdw:Lcom/google/android/gms/internal/ads/eht$r$c;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/eht$r$a;->a(Lcom/google/android/gms/internal/ads/eht$r$c;)Lcom/google/android/gms/internal/ads/eht$r$a;

    goto :goto_0

    .line 3020
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/eht$r$c;->zzcdv:Lcom/google/android/gms/internal/ads/eht$r$c;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/eht$r$a;->a(Lcom/google/android/gms/internal/ads/eht$r$c;)Lcom/google/android/gms/internal/ads/eht$r$a;

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 3028
    sget-object p0, Lcom/google/android/gms/internal/ads/eht$r$b;->zzcdp:Lcom/google/android/gms/internal/ads/eht$r$b;

    goto :goto_1

    .line 3026
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/eht$r$b;->zzcds:Lcom/google/android/gms/internal/ads/eht$r$b;

    goto :goto_1

    .line 3027
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/eht$r$b;->zzcdr:Lcom/google/android/gms/internal/ads/eht$r$b;

    goto :goto_1

    .line 3025
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/ads/eht$r$b;->zzcdq:Lcom/google/android/gms/internal/ads/eht$r$b;

    .line 3029
    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/eht$r$a;->a(Lcom/google/android/gms/internal/ads/eht$r$b;)Lcom/google/android/gms/internal/ads/eht$r$a;

    .line 3067
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    .line 3030
    check-cast p0, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p0, Lcom/google/android/gms/internal/ads/eht$r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 4

    const-string v0, "ad_types"

    .line 1036
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1037
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1038
    check-cast p0, Ljava/util/List;

    goto :goto_0

    .line 1039
    :cond_0
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1040
    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 1042
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1043
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1044
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1045
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1047
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    .line 1041
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 1049
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1052
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v3, "interstitial"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x3

    goto :goto_4

    :sswitch_1
    const-string v3, "rewarded"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x2

    goto :goto_4

    :sswitch_2
    const-string v3, "native"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x1

    goto :goto_4

    :sswitch_3
    const-string v3, "banner"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    packed-switch v2, :pswitch_data_0

    .line 1057
    sget-object v1, Lcom/google/android/gms/internal/ads/eht$h$a;->zzcaq:Lcom/google/android/gms/internal/ads/eht$h$a;

    goto :goto_5

    .line 1054
    :pswitch_0
    sget-object v1, Lcom/google/android/gms/internal/ads/eht$h$a;->zzcas:Lcom/google/android/gms/internal/ads/eht$h$a;

    goto :goto_5

    .line 1056
    :pswitch_1
    sget-object v1, Lcom/google/android/gms/internal/ads/eht$h$a;->zzcaz:Lcom/google/android/gms/internal/ads/eht$h$a;

    goto :goto_5

    .line 1055
    :pswitch_2
    sget-object v1, Lcom/google/android/gms/internal/ads/eht$h$a;->zzcav:Lcom/google/android/gms/internal/ads/eht$h$a;

    goto :goto_5

    .line 1053
    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/ads/eht$h$a;->zzcar:Lcom/google/android/gms/internal/ads/eht$h$a;

    .line 1058
    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_3
        -0x3ebdafe9 -> :sswitch_2
        -0xe47b3f2 -> :sswitch_1
        0x240b672c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bre;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/eht$r;Lcom/google/android/gms/internal/ads/eht$t$b;)[B
    .locals 5

    .line 4061
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$t$a;->b()Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object v0

    .line 4062
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/eht$t$a$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object p2

    .line 4063
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bre;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4064
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzr;->zzb(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4065
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bre;->b(Z)Lcom/google/android/gms/internal/ads/eid;

    move-result-object v0

    .line 4066
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/eht$t$a$a;->c(Lcom/google/android/gms/internal/ads/eid;)Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object p2

    .line 4067
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bre;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bre;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/eid;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/eht$t$a$a;->d(Lcom/google/android/gms/internal/ads/eid;)Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bre;->d:Lcom/google/android/gms/internal/ads/brb;

    .line 4068
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/brb;->b()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/ads/eht$t$a$a;->b(J)Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bre;->d:Lcom/google/android/gms/internal/ads/brb;

    .line 4069
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/brb;->d()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/ads/eht$t$a$a;->c(J)Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bre;->d:Lcom/google/android/gms/internal/ads/brb;

    .line 4070
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/brb;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/eht$t$a$a;->a(I)Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object p2

    .line 4071
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/eht$t$a$a;->a(Lcom/google/android/gms/internal/ads/eht$t$b;)Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object p2

    .line 4072
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/eht$t$a$a;->a(Lcom/google/android/gms/internal/ads/eht$r;)Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bre;->g:Lcom/google/android/gms/internal/ads/eid;

    .line 4073
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/eht$t$a$a;->e(Lcom/google/android/gms/internal/ads/eid;)Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object p2

    .line 4074
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bre;->b(Z)Lcom/google/android/gms/internal/ads/eid;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/eht$t$a$a;->a(Lcom/google/android/gms/internal/ads/eid;)Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object p1

    .line 4075
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/eht$t$a$a;->a(J)Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object p1

    .line 4076
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bre;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 4077
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/content/ContentResolver;)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 4078
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bre;->b(Z)Lcom/google/android/gms/internal/ads/eid;

    move-result-object p0

    .line 4079
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/eht$t$a$a;->b(Lcom/google/android/gms/internal/ads/eid;)Lcom/google/android/gms/internal/ads/eht$t$a$a;

    move-result-object p0

    .line 5067
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    .line 4080
    check-cast p0, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p0, Lcom/google/android/gms/internal/ads/eht$t$a;

    .line 4081
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dln;->g()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/bre;)Lcom/google/android/gms/internal/ads/bqv;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bre;->e:Lcom/google/android/gms/internal/ads/bqv;

    return-object p0
.end method

.method static synthetic b(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/eht$t$b;
    .locals 2

    const-string v0, "device"

    .line 2031
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "network"

    .line 2032
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "active_network_state"

    const/4 v1, -0x1

    .line 2033
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 2034
    sget-object v0, Lcom/google/android/gms/internal/ads/bre;->h:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcev:Lcom/google/android/gms/internal/ads/eht$t$b;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/eht$t$b;

    return-object p0
.end method

.method private static b(Z)Lcom/google/android/gms/internal/ads/eid;
    .locals 0

    if-eqz p0, :cond_0

    .line 9
    sget-object p0, Lcom/google/android/gms/internal/ads/eid;->zzccm:Lcom/google/android/gms/internal/ads/eid;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/eid;->zzccl:Lcom/google/android/gms/internal/ads/eid;

    return-object p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bre;->b:Lcom/google/android/gms/internal/ads/aqs;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqs;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/brh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/brh;-><init>(Lcom/google/android/gms/internal/ads/bre;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 84
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-void
.end method
