.class public final Lit/gmariotti/cardslib/library/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lit/gmariotti/cardslib/library/b/a;


# instance fields
.field protected a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {}, Lit/gmariotti/cardslib/library/b/a;->b()Lit/gmariotti/cardslib/library/b/a;

    move-result-object v0

    iget-object v0, v0, Lit/gmariotti/cardslib/library/b/a;->a:Landroid/util/LruCache;

    return-object v0
.end method

.method public static a(Landroid/util/LruCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-static {}, Lit/gmariotti/cardslib/library/b/a;->b()Lit/gmariotti/cardslib/library/b/a;

    move-result-object v0

    iput-object p0, v0, Lit/gmariotti/cardslib/library/b/a;->a:Landroid/util/LruCache;

    return-void
.end method

.method private static b()Lit/gmariotti/cardslib/library/b/a;
    .locals 1

    .line 42
    sget-object v0, Lit/gmariotti/cardslib/library/b/a;->b:Lit/gmariotti/cardslib/library/b/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lit/gmariotti/cardslib/library/b/a;

    invoke-direct {v0}, Lit/gmariotti/cardslib/library/b/a;-><init>()V

    sput-object v0, Lit/gmariotti/cardslib/library/b/a;->b:Lit/gmariotti/cardslib/library/b/a;

    return-object v0
.end method
