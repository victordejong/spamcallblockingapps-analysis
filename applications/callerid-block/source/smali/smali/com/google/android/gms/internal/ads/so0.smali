.class public final Lcom/google/android/gms/internal/ads/so0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zh2;

.field private final c:Lcom/google/android/gms/internal/ads/m4;

.field private final d:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final e:Lcom/google/android/gms/ads/internal/a;

.field private final f:Lcom/google/android/gms/internal/ads/wv2;

.field private final g:Lcom/google/android/gms/internal/ads/ga0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ut;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/internal/ads/m4;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/wv2;Lcom/google/android/gms/internal/ads/ga0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/so0;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/so0;->b:Lcom/google/android/gms/internal/ads/zh2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/so0;->c:Lcom/google/android/gms/internal/ads/m4;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/so0;->d:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/so0;->e:Lcom/google/android/gms/ads/internal/a;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/so0;->f:Lcom/google/android/gms/internal/ads/wv2;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/so0;->g:Lcom/google/android/gms/internal/ads/ga0;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/so0;)Lcom/google/android/gms/internal/ads/ga0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/so0;->g:Lcom/google/android/gms/internal/ads/ga0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzyx;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/dl1;)Lcom/google/android/gms/internal/ads/jt;
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/so0;->a:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/yu;->a(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/yu;

    move-result-object v2

    move-object/from16 v3, p1

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzyx;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/so0;->b:Lcom/google/android/gms/internal/ads/zh2;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/so0;->c:Lcom/google/android/gms/internal/ads/m4;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/so0;->d:Lcom/google/android/gms/internal/ads/zzbbq;

    new-instance v10, Lcom/google/android/gms/internal/ads/ho0;

    invoke-direct {v10, p0}, Lcom/google/android/gms/internal/ads/ho0;-><init>(Lcom/google/android/gms/internal/ads/so0;)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/so0;->e:Lcom/google/android/gms/ads/internal/a;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/so0;->f:Lcom/google/android/gms/internal/ads/wv2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/ut;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yu;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/internal/ads/m4;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/c4;Lcom/google/android/gms/ads/internal/k;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/wv2;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/dl1;)Lcom/google/android/gms/internal/ads/jt;

    move-result-object v1

    return-object v1
.end method
