.class public final Lcom/google/android/gms/internal/ads/bmj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$t$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/aou;

.field private final c:Landroid/telephony/TelephonyManager;

.field private final d:Lcom/google/android/gms/internal/ads/bmg;

.field private final e:Lcom/google/android/gms/internal/ads/bma;

.field private f:Lcom/google/android/gms/internal/ads/dxf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 91
    sput-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->c:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->b:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->b:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->b:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->d:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->e:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->e:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->e:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->e:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->e:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->f:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 103
    sget-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->b:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->b:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aou;Lcom/google/android/gms/internal/ads/bmg;Lcom/google/android/gms/internal/ads/bma;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmj;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bmj;->b:Lcom/google/android/gms/internal/ads/aou;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bmj;->d:Lcom/google/android/gms/internal/ads/bmg;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bmj;->e:Lcom/google/android/gms/internal/ads/bma;

    .line 6
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bmj;->c:Landroid/telephony/TelephonyManager;

    .line 7
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bmj;)Lcom/google/android/gms/internal/ads/bma;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmj;->e:Lcom/google/android/gms/internal/ads/bma;

    return-object v0
.end method

.method private final a(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/dwv$r;
    .locals 4

    .prologue
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$r;->a()Lcom/google/android/gms/internal/ads/dwv$r$b;

    move-result-object v1

    .line 10
    const-string/jumbo v0, "cnt"

    const/4 v2, -0x2

    .line 11
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 12
    const-string/jumbo v2, "gnt"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 13
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/dxf;->b:Lcom/google/android/gms/internal/ads/dxf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bmj;->f:Lcom/google/android/gms/internal/ads/dxf;

    .line 29
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$r;

    return-object v0

    .line 15
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/dxf;->a:Lcom/google/android/gms/internal/ads/dxf;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/bmj;->f:Lcom/google/android/gms/internal/ads/dxf;

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$r$c;->a:Lcom/google/android/gms/internal/ads/dwv$r$c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwv$r$b;->a(Lcom/google/android/gms/internal/ads/dwv$r$c;)Lcom/google/android/gms/internal/ads/dwv$r$b;

    .line 23
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$r$a;->a:Lcom/google/android/gms/internal/ads/dwv$r$a;

    .line 28
    :goto_2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwv$r$b;->a(Lcom/google/android/gms/internal/ads/dwv$r$a;)Lcom/google/android/gms/internal/ads/dwv$r$b;

    goto :goto_0

    .line 17
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$r$c;->c:Lcom/google/android/gms/internal/ads/dwv$r$c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwv$r$b;->a(Lcom/google/android/gms/internal/ads/dwv$r$c;)Lcom/google/android/gms/internal/ads/dwv$r$b;

    goto :goto_1

    .line 19
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$r$c;->b:Lcom/google/android/gms/internal/ads/dwv$r$c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwv$r$b;->a(Lcom/google/android/gms/internal/ads/dwv$r$c;)Lcom/google/android/gms/internal/ads/dwv$r$b;

    goto :goto_1

    .line 24
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$r$a;->b:Lcom/google/android/gms/internal/ads/dwv$r$a;

    goto :goto_2

    .line 25
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$r$a;->d:Lcom/google/android/gms/internal/ads/dwv$r$a;

    goto :goto_2

    .line 26
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$r$a;->c:Lcom/google/android/gms/internal/ads/dwv$r$a;

    goto :goto_2

    .line 16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 23
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bmj;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 85
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bmj;->c(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bmj;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/dwv$r;Lcom/google/android/gms/internal/ads/dwv$t$c;)[B
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/bmj;->a(ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/dwv$r;Lcom/google/android/gms/internal/ads/dwv$t$c;)[B

    move-result-object v0

    return-object v0
.end method

.method private final a(ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/dwv$r;Lcom/google/android/gms/internal/ads/dwv$t$c;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$h$a;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dwv$r;",
            "Lcom/google/android/gms/internal/ads/dwv$t$c;",
            ")[B"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$t$a;->c()Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/dwv$t$a$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v3

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmj;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/vj;->b(Landroid/content/ContentResolver;)I

    move-result v0

    .line 64
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bmj;->b(Z)Lcom/google/android/gms/internal/ads/dxf;

    move-result-object v0

    .line 65
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/dwv$t$a$a;->c(Lcom/google/android/gms/internal/ads/dxf;)Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bmj;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bmj;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/vj;->a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/dxf;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dwv$t$a$a;->d(Lcom/google/android/gms/internal/ads/dxf;)Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bmj;->d:Lcom/google/android/gms/internal/ads/bmg;

    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bmg;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dwv$t$a$a;->b(J)Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bmj;->d:Lcom/google/android/gms/internal/ads/bmg;

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bmg;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dwv$t$a$a;->c(J)Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bmj;->d:Lcom/google/android/gms/internal/ads/bmg;

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bmg;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dwv$t$a$a;->a(I)Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/dwv$t$a$a;->a(Lcom/google/android/gms/internal/ads/dwv$t$c;)Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/dwv$t$a$a;->a(Lcom/google/android/gms/internal/ads/dwv$r;)Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bmj;->f:Lcom/google/android/gms/internal/ads/dxf;

    .line 72
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dwv$t$a$a;->e(Lcom/google/android/gms/internal/ads/dxf;)Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v0

    .line 73
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bmj;->b(Z)Lcom/google/android/gms/internal/ads/dxf;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dwv$t$a$a;->a(Lcom/google/android/gms/internal/ads/dxf;)Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dwv$t$a$a;->a(J)Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v0

    .line 75
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bmj;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 76
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/vj;->a(Landroid/content/ContentResolver;)I

    move-result v3

    .line 77
    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bmj;->b(Z)Lcom/google/android/gms/internal/ads/dxf;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$t$a$a;->b(Lcom/google/android/gms/internal/ads/dxf;)Lcom/google/android/gms/internal/ads/dwv$t$a$a;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$t$a;

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0

    :cond_1
    move v1, v2

    .line 77
    goto :goto_1
.end method

.method private static b(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/dwv$t$c;
    .locals 3

    .prologue
    .line 30
    const-string/jumbo v0, "device"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "network"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 32
    const-string/jumbo v1, "active_network_state"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/ads/bmj;->g:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$t$c;->a:Lcom/google/android/gms/internal/ads/dwv$t$c;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$t$c;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/bmj;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/dwv$t$c;
    .locals 1

    .prologue
    .line 86
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bmj;->b(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/dwv$t$c;

    move-result-object v0

    return-object v0
.end method

.method private static b(Z)Lcom/google/android/gms/internal/ads/dxf;
    .locals 1

    .prologue
    .line 8
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/dxf;->b:Lcom/google/android/gms/internal/ads/dxf;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dxf;->a:Lcom/google/android/gms/internal/ads/dxf;

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/bmj;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/dwv$r;
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bmj;->a(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/dwv$r;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$h$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const-string/jumbo v0, "ad_types"

    .line 35
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Ljava/util/List;

    .line 41
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 43
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 44
    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :cond_1
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 39
    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 48
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_3
    move v0, v1

    :goto_4
    packed-switch v0, :pswitch_data_0

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$h$a;->a:Lcom/google/android/gms/internal/ads/dwv$h$a;

    .line 57
    :goto_5
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 46
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 51
    :sswitch_0
    const-string/jumbo v4, "banner"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_4

    :sswitch_1
    const-string/jumbo v4, "interstitial"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :sswitch_2
    const-string/jumbo v4, "native"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_4

    :sswitch_3
    const-string/jumbo v4, "rewarded"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_4

    .line 52
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$h$a;->b:Lcom/google/android/gms/internal/ads/dwv$h$a;

    goto :goto_5

    .line 53
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$h$a;->c:Lcom/google/android/gms/internal/ads/dwv$h$a;

    goto :goto_5

    .line 54
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$h$a;->d:Lcom/google/android/gms/internal/ads/dwv$h$a;

    goto :goto_5

    .line 55
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$h$a;->e:Lcom/google/android/gms/internal/ads/dwv$h$a;

    goto :goto_5

    .line 59
    :cond_5
    return-object v2

    .line 51
    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_0
        -0x3ebdafe9 -> :sswitch_2
        -0xe47b3f2 -> :sswitch_3
        0x240b672c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmj;->b:Lcom/google/android/gms/internal/ads/aou;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aou;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bmn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bmn;-><init>(Lcom/google/android/gms/internal/ads/bmj;Z)V

    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 83
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    .line 84
    return-void
.end method
