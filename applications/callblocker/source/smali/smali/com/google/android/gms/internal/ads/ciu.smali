.class public final Lcom/google/android/gms/internal/ads/ciu;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/ciu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/cix;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I

.field private final h:[Lcom/google/android/gms/internal/ads/cix;

.field private final i:[I

.field private final j:[I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/google/android/gms/internal/ads/ciz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ciz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ciu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;II)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/cix;->values()[Lcom/google/android/gms/internal/ads/cix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ciu;->h:[Lcom/google/android/gms/internal/ads/cix;

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/ciw;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ciu;->i:[I

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/ciw;->b()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ciu;->j:[I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ciu;->a:Landroid/content/Context;

    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/ads/ciu;->k:I

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciu;->h:[Lcom/google/android/gms/internal/ads/cix;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ciu;->b:Lcom/google/android/gms/internal/ads/cix;

    .line 34
    iput p2, p0, Lcom/google/android/gms/internal/ads/ciu;->c:I

    .line 35
    iput p3, p0, Lcom/google/android/gms/internal/ads/ciu;->d:I

    .line 36
    iput p4, p0, Lcom/google/android/gms/internal/ads/ciu;->e:I

    .line 37
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ciu;->f:Ljava/lang/String;

    .line 38
    iput p6, p0, Lcom/google/android/gms/internal/ads/ciu;->l:I

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciu;->i:[I

    aget v0, v0, p6

    iput v0, p0, Lcom/google/android/gms/internal/ads/ciu;->g:I

    .line 40
    iput p7, p0, Lcom/google/android/gms/internal/ads/ciu;->m:I

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciu;->j:[I

    aget v0, v0, p7

    iput v0, p0, Lcom/google/android/gms/internal/ads/ciu;->n:I

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cix;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/cix;->values()[Lcom/google/android/gms/internal/ads/cix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ciu;->h:[Lcom/google/android/gms/internal/ads/cix;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/ciw;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ciu;->i:[I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/ciw;->b()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ciu;->j:[I

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ciu;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cix;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ciu;->k:I

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ciu;->b:Lcom/google/android/gms/internal/ads/cix;

    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/ciu;->c:I

    .line 9
    iput p4, p0, Lcom/google/android/gms/internal/ads/ciu;->d:I

    .line 10
    iput p5, p0, Lcom/google/android/gms/internal/ads/ciu;->e:I

    .line 11
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ciu;->f:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "oldest"

    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget v0, Lcom/google/android/gms/internal/ads/ciw;->a:I

    .line 19
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/ciu;->g:I

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/ciu;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ciu;->l:I

    .line 22
    const-string/jumbo v0, "onAdClosed"

    invoke-virtual {v0, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    sget v0, Lcom/google/android/gms/internal/ads/ciw;->d:I

    .line 24
    iput v0, p0, Lcom/google/android/gms/internal/ads/ciu;->n:I

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/ciu;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ciu;->m:I

    .line 26
    return-void

    .line 15
    :cond_0
    const-string/jumbo v0, "lru"

    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    const-string/jumbo v0, "lfu"

    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    sget v0, Lcom/google/android/gms/internal/ads/ciw;->c:I

    goto :goto_0

    .line 18
    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/ciw;->b:I

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cix;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ciu;
    .locals 9

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gms/internal/ads/cix;->a:Lcom/google/android/gms/internal/ads/cix;

    if-ne p0, v0, :cond_0

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/ciu;

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dh:Lcom/google/android/gms/internal/ads/ect;

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dn:Lcom/google/android/gms/internal/ads/ect;

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dp:Lcom/google/android/gms/internal/ads/ect;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dr:Lcom/google/android/gms/internal/ads/ect;

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v6

    .line 56
    check-cast v6, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dj:Lcom/google/android/gms/internal/ads/ect;

    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v7

    .line 59
    check-cast v7, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dl:Lcom/google/android/gms/internal/ads/ect;

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v8

    .line 62
    check-cast v8, Ljava/lang/String;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/ciu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cix;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-object v0

    .line 64
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cix;->b:Lcom/google/android/gms/internal/ads/cix;

    if-ne p0, v0, :cond_1

    .line 65
    new-instance v0, Lcom/google/android/gms/internal/ads/ciu;

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->di:Lcom/google/android/gms/internal/ads/ect;

    .line 67
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->do:Lcom/google/android/gms/internal/ads/ect;

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dq:Lcom/google/android/gms/internal/ads/ect;

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->ds:Lcom/google/android/gms/internal/ads/ect;

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v6

    .line 77
    check-cast v6, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dk:Lcom/google/android/gms/internal/ads/ect;

    .line 79
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v7

    .line 80
    check-cast v7, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dm:Lcom/google/android/gms/internal/ads/ect;

    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v8

    .line 83
    check-cast v8, Ljava/lang/String;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/ciu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cix;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/cix;->c:Lcom/google/android/gms/internal/ads/cix;

    if-ne p0, v0, :cond_2

    .line 86
    new-instance v0, Lcom/google/android/gms/internal/ads/ciu;

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dv:Lcom/google/android/gms/internal/ads/ect;

    .line 88
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dx:Lcom/google/android/gms/internal/ads/ect;

    .line 91
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dy:Lcom/google/android/gms/internal/ads/ect;

    .line 94
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dt:Lcom/google/android/gms/internal/ads/ect;

    .line 97
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v6

    .line 98
    check-cast v6, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->du:Lcom/google/android/gms/internal/ads/ect;

    .line 100
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v7

    .line 101
    check-cast v7, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->dw:Lcom/google/android/gms/internal/ads/ect;

    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v8

    .line 104
    check-cast v8, Ljava/lang/String;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/ciu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cix;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dg:Lcom/google/android/gms/internal/ads/ect;

    .line 108
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 110
    .line 111
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 112
    const/4 v1, 0x1

    .line 113
    iget v2, p0, Lcom/google/android/gms/internal/ads/ciu;->k:I

    .line 114
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 115
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/ads/ciu;->c:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 116
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/ads/ciu;->d:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 117
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/ads/ciu;->e:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 118
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ciu;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 119
    const/4 v1, 0x6

    .line 120
    iget v2, p0, Lcom/google/android/gms/internal/ads/ciu;->l:I

    .line 121
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 122
    const/4 v1, 0x7

    .line 123
    iget v2, p0, Lcom/google/android/gms/internal/ads/ciu;->m:I

    .line 124
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 125
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 126
    return-void
.end method
