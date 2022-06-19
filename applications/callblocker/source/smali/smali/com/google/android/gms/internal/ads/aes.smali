.class final synthetic Lcom/google/android/gms/internal/ads/aes;
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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aes;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aes;->b:Lcom/google/android/gms/internal/ads/aei;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aes;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/aes;->d:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/aes;->e:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/aes;->f:Lcom/google/android/gms/internal/ads/ctl;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/aes;->g:Lcom/google/android/gms/internal/ads/yd;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/aes;->h:Lcom/google/android/gms/internal/ads/o;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/aes;->i:Lcom/google/android/gms/ads/internal/i;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/aes;->j:Lcom/google/android/gms/ads/internal/a;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/aes;->k:Lcom/google/android/gms/internal/ads/dwi;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/aes;->l:Lcom/google/android/gms/internal/ads/dvk;

    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/aes;->m:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 15

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aes;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aes;->b:Lcom/google/android/gms/internal/ads/aei;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aes;->c:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/aes;->d:Z

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/aes;->e:Z

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aes;->f:Lcom/google/android/gms/internal/ads/ctl;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/aes;->g:Lcom/google/android/gms/internal/ads/yd;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/aes;->h:Lcom/google/android/gms/internal/ads/o;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/aes;->i:Lcom/google/android/gms/ads/internal/i;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/aes;->j:Lcom/google/android/gms/ads/internal/a;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/aes;->k:Lcom/google/android/gms/internal/ads/dwi;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/aes;->l:Lcom/google/android/gms/internal/ads/dvk;

    iget-boolean v14, p0, Lcom/google/android/gms/internal/ads/aes;->m:Z

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/aem;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/aem;-><init>()V

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/aek;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/aek;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/aer;

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/aer;-><init>(Lcom/google/android/gms/internal/ads/aek;Lcom/google/android/gms/internal/ads/aem;Lcom/google/android/gms/internal/ads/aei;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/dvk;Z)V

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/ade;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ade;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    .line 6
    new-instance v3, Lcom/google/android/gms/internal/ads/acl;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/acl;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/aer;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 7
    invoke-virtual {v2, v1, v6}, Lcom/google/android/gms/internal/ads/aem;->a(Lcom/google/android/gms/internal/ads/act;Z)V

    .line 9
    return-object v1
.end method
