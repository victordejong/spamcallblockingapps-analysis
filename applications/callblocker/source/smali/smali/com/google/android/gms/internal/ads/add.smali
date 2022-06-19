.class final synthetic Lcom/google/android/gms/internal/ads/add;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cov;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/aei;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:Lcom/google/android/gms/internal/ads/ctl;

.field private final g:Lcom/google/android/gms/internal/ads/yd;

.field private final h:Lcom/google/android/gms/internal/ads/o;

.field private final i:Lcom/google/android/gms/ads/internal/i;

.field private final j:Lcom/google/android/gms/ads/internal/a;

.field private final k:Lcom/google/android/gms/internal/ads/dwi;

.field private final l:Lcom/google/android/gms/internal/ads/dvk;

.field private final m:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aei;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/dvk;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/add;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/add;->b:Lcom/google/android/gms/internal/ads/aei;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/add;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/add;->d:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/add;->e:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/add;->f:Lcom/google/android/gms/internal/ads/ctl;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/add;->g:Lcom/google/android/gms/internal/ads/yd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/add;->h:Lcom/google/android/gms/internal/ads/o;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/add;->i:Lcom/google/android/gms/ads/internal/i;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/add;->j:Lcom/google/android/gms/ads/internal/a;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/add;->k:Lcom/google/android/gms/internal/ads/dwi;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/add;->l:Lcom/google/android/gms/internal/ads/dvk;

    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/add;->m:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 14

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/add;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/add;->b:Lcom/google/android/gms/internal/ads/aei;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/add;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/add;->d:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/add;->e:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/add;->f:Lcom/google/android/gms/internal/ads/ctl;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/add;->g:Lcom/google/android/gms/internal/ads/yd;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/add;->h:Lcom/google/android/gms/internal/ads/o;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/add;->i:Lcom/google/android/gms/ads/internal/i;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/add;->j:Lcom/google/android/gms/ads/internal/a;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/add;->k:Lcom/google/android/gms/internal/ads/dwi;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/add;->l:Lcom/google/android/gms/internal/ads/dvk;

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/add;->m:Z

    .line 2
    new-instance v13, Lcom/google/android/gms/internal/ads/ade;

    .line 3
    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/adj;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aei;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/dvk;Z)Lcom/google/android/gms/internal/ads/adj;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/google/android/gms/internal/ads/ade;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v13, v10, v4}, Lcom/google/android/gms/internal/ads/vj;->a(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/dwi;Z)Lcom/google/android/gms/internal/ads/acs;

    move-result-object v0

    .line 7
    invoke-interface {v13, v0}, Lcom/google/android/gms/internal/ads/act;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/acl;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/acl;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    invoke-interface {v13, v0}, Lcom/google/android/gms/internal/ads/act;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 10
    return-object v13
.end method
