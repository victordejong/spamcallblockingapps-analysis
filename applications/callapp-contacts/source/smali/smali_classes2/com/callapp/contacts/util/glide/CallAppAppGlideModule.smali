.class public Lcom/callapp/contacts/util/glide/CallAppAppGlideModule;
.super Lcom/bumptech/glide/c/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/bumptech/glide/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 7

    .line 25
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 1360
    iput v0, p2, Lcom/bumptech/glide/d;->l:I

    .line 32
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->getTotalExternalStorageSizeMB()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    long-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double v0, v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-wide v2, 0x80000000L

    .line 35
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0xfa00000

    .line 39
    :goto_0
    const-class v4, Lcom/callapp/contacts/util/glide/CallAppAppGlideModule;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "diskCacheSizeBytes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", 2gb: 2147483648, 20 Percent of total external storage size: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/bumptech/glide/load/engine/b/i$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/b/i$a;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/b/i$a;->a()Lcom/bumptech/glide/load/engine/b/i$a;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/b/i$a;->b()Lcom/bumptech/glide/load/engine/b/i;

    move-result-object p1

    .line 44
    new-instance v0, Lcom/bumptech/glide/load/engine/b/g;

    .line 2087
    iget p1, p1, Lcom/bumptech/glide/load/engine/b/i;->b:I

    int-to-long v1, p1

    .line 44
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/b/g;-><init>(J)V

    .line 2105
    iput-object v0, p2, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/b/h;

    .line 45
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->a()Lcom/bumptech/glide/load/engine/c/a$a;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/engine/c/a$a;->a(I)Lcom/bumptech/glide/load/engine/c/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/c/a$a;->a()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object p1

    .line 2188
    iput-object p1, p2, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/c/a;

    .line 46
    new-instance p1, Lcom/bumptech/glide/e/h;

    invoke-direct {p1}, Lcom/bumptech/glide/e/h;-><init>()V

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->a:Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/e/h;->a(Lcom/bumptech/glide/load/resource/bitmap/k;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/e/h;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/e/h;)Lcom/bumptech/glide/d;

    return-void
.end method

.method public isManifestParsingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
