.class public final Lcom/bumptech/glide/load/engine/b/i$a;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final a:I


# instance fields
.field final b:Landroid/content/Context;

.field c:Landroid/app/ActivityManager;

.field d:Lcom/bumptech/glide/load/engine/b/i$c;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/bumptech/glide/load/engine/b/i$a;->a:I

    .line 145
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->e:F

    .line 160
    sget v0, Lcom/bumptech/glide/load/engine/b/i$a;->a:I

    int-to-float v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->f:F

    .line 161
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->g:F

    .line 162
    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->h:F

    .line 163
    const/high16 v0, 0x400000

    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->i:I

    .line 166
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/i$a;->b:Landroid/content/Context;

    .line 167
    const-string/jumbo v0, "activity"

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    .line 169
    new-instance v0, Lcom/bumptech/glide/load/engine/b/i$b;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/b/i$b;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->d:Lcom/bumptech/glide/load/engine/b/i$c;

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->f:F

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/b/i;
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/bumptech/glide/load/engine/b/i;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/b/i;-><init>(Lcom/bumptech/glide/load/engine/b/i$a;)V

    return-object v0
.end method
