.class public Lcom/allinone/callerid/main/CustomAppGlideModule;
.super Lcom/bumptech/glide/m/a;
.source "CustomAppGlideModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/m/a;-><init>()V

    return-void
.end method

.method private d(Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V
    .locals 5

    .line 1
    const-class v0, Lcom/allinone/callerid/d/f/b/b;

    new-instance v1, Lcom/allinone/callerid/d/f/b/f;

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->h()Landroid/content/Context;

    move-result-object v2

    const-string v3, "glide_temp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/allinone/callerid/d/f/b/f;-><init>(Lcom/bumptech/glide/c;Ljava/io/File;)V

    .line 3
    const-class p1, Ljava/io/InputStream;

    invoke-virtual {p2, p1, v0, v1}, Lcom/bumptech/glide/Registry;->o(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    .line 4
    const-class p1, Ljava/nio/ByteBuffer;

    new-instance v2, Lcom/allinone/callerid/d/f/b/a;

    invoke-direct {v2, v1}, Lcom/allinone/callerid/d/f/b/a;-><init>(Lcom/allinone/callerid/d/f/b/f;)V

    invoke-virtual {p2, p1, v0, v2}, Lcom/bumptech/glide/Registry;->o(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/Registry;

    .line 5
    const-class p1, Lpl/droidsonroids/gif/c;

    new-instance v1, Lcom/allinone/callerid/d/f/b/e;

    invoke-direct {v1}, Lcom/allinone/callerid/d/f/b/e;-><init>()V

    invoke-virtual {p2, v0, p1, v1}, Lcom/bumptech/glide/Registry;->s(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j/h/e;)Lcom/bumptech/glide/Registry;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/allinone/callerid/main/CustomAppGlideModule;->d(Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V

    return-void
.end method
