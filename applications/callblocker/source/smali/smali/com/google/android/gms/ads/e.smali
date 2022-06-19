.class public final Lcom/google/android/gms/ads/e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field public static final a:Lcom/google/android/gms/ads/e;

.field public static final b:Lcom/google/android/gms/ads/e;

.field public static final c:Lcom/google/android/gms/ads/e;

.field public static final d:Lcom/google/android/gms/ads/e;

.field public static final e:Lcom/google/android/gms/ads/e;

.field public static final f:Lcom/google/android/gms/ads/e;

.field public static final g:Lcom/google/android/gms/ads/e;

.field public static final h:Lcom/google/android/gms/ads/e;

.field public static final i:Lcom/google/android/gms/ads/e;

.field public static final j:Lcom/google/android/gms/ads/e;

.field public static final k:Lcom/google/android/gms/ads/e;


# instance fields
.field private final l:I

.field private final m:I

.field private final n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x140

    const/4 v6, -0x3

    const/16 v5, 0x32

    const/4 v4, 0x0

    .line 84
    new-instance v0, Lcom/google/android/gms/ads/e;

    const-string/jumbo v1, "320x50_mb"

    invoke-direct {v0, v7, v5, v1}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/ads/e;

    .line 85
    new-instance v0, Lcom/google/android/gms/ads/e;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    const-string/jumbo v3, "468x60_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/e;->b:Lcom/google/android/gms/ads/e;

    .line 86
    new-instance v0, Lcom/google/android/gms/ads/e;

    const/16 v1, 0x64

    const-string/jumbo v2, "320x100_as"

    invoke-direct {v0, v7, v1, v2}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/e;->c:Lcom/google/android/gms/ads/e;

    .line 87
    new-instance v0, Lcom/google/android/gms/ads/e;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    const-string/jumbo v3, "728x90_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/e;->d:Lcom/google/android/gms/ads/e;

    .line 88
    new-instance v0, Lcom/google/android/gms/ads/e;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    const-string/jumbo v3, "300x250_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/e;->e:Lcom/google/android/gms/ads/e;

    .line 89
    new-instance v0, Lcom/google/android/gms/ads/e;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    const-string/jumbo v3, "160x600_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/e;->f:Lcom/google/android/gms/ads/e;

    .line 90
    new-instance v0, Lcom/google/android/gms/ads/e;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string/jumbo v3, "smart_banner"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/e;->g:Lcom/google/android/gms/ads/e;

    .line 91
    new-instance v0, Lcom/google/android/gms/ads/e;

    const/4 v1, -0x4

    const-string/jumbo v2, "fluid"

    invoke-direct {v0, v6, v1, v2}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/e;->h:Lcom/google/android/gms/ads/e;

    .line 92
    new-instance v0, Lcom/google/android/gms/ads/e;

    const-string/jumbo v1, "invalid"

    invoke-direct {v0, v4, v4, v1}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/e;->i:Lcom/google/android/gms/ads/e;

    .line 93
    new-instance v0, Lcom/google/android/gms/ads/e;

    const-string/jumbo v1, "50x50_mb"

    invoke-direct {v0, v5, v5, v1}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/e;->j:Lcom/google/android/gms/ads/e;

    .line 94
    new-instance v0, Lcom/google/android/gms/ads/e;

    const-string/jumbo v1, "search_v2"

    invoke-direct {v0, v6, v4, v1}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/e;->k:Lcom/google/android/gms/ads/e;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .prologue
    .line 1
    .line 2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "FULL"

    move-object v1, v0

    .line 3
    :goto_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    const-string/jumbo v0, "AUTO"

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_as"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/e;-><init>(IILjava/lang/String;)V

    .line 5
    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    if-gez p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Invalid width for AdSize: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_0
    if-gez p2, :cond_1

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x4

    if-eq p2, v0, :cond_1

    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Invalid height for AdSize: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    iput p1, p0, Lcom/google/android/gms/ads/e;->l:I

    .line 12
    iput p2, p0, Lcom/google/android/gms/ads/e;->m:I

    .line 13
    iput-object p3, p0, Lcom/google/android/gms/ads/e;->n:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/gms/ads/e;->m:I

    return v0
.end method

.method public final a(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/gms/ads/e;->m:I

    packed-switch v0, :pswitch_data_0

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget v0, p0, Lcom/google/android/gms/ads/e;->m:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0

    .line 64
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dyd;->b(Landroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0

    .line 65
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/google/android/gms/ads/e;->q:I

    .line 81
    return-void
.end method

.method final a(Z)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/e;->p:Z

    .line 79
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/android/gms/ads/e;->l:I

    return v0
.end method

.method public final b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/gms/ads/e;->l:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget v0, p0, Lcom/google/android/gms/ads/e;->l:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0

    .line 69
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dyd;->a(Landroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0

    .line 70
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/gms/ads/e;->l:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/e;->m:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/gms/ads/e;->o:Z

    return v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/android/gms/ads/e;->p:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    if-ne p1, p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/ads/e;

    if-nez v2, :cond_2

    move v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    check-cast p1, Lcom/google/android/gms/ads/e;

    .line 59
    iget v2, p0, Lcom/google/android/gms/ads/e;->l:I

    iget v3, p1, Lcom/google/android/gms/ads/e;->l:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/ads/e;->m:I

    iget v3, p1, Lcom/google/android/gms/ads/e;->m:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/ads/e;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/ads/e;->n:Ljava/lang/String;

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 61
    goto :goto_0
.end method

.method final f()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/android/gms/ads/e;->q:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/ads/e;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/ads/e;->n:Ljava/lang/String;

    return-object v0
.end method
