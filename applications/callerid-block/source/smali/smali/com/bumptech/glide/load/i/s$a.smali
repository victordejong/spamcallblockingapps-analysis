.class public final Lcom/bumptech/glide/load/i/s$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/i/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/i/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/i/o<",
        "Ljava/lang/Integer;",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/i/s$a;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public b(Lcom/bumptech/glide/load/i/r;)Lcom/bumptech/glide/load/i/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/i/r;",
            ")",
            "Lcom/bumptech/glide/load/i/n<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/i/s;

    iget-object v1, p0, Lcom/bumptech/glide/load/i/s$a;->a:Landroid/content/res/Resources;

    const-class v2, Landroid/net/Uri;

    const-class v3, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v2, v3}, Lcom/bumptech/glide/load/i/r;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/i/n;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/bumptech/glide/load/i/s;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/i/n;)V

    return-object v0
.end method
