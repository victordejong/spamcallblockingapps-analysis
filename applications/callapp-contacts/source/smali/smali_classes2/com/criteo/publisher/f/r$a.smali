.class final Lcom/criteo/publisher/f/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f/r;->a(Ljava/io/File;)Lcom/criteo/publisher/f/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/criteo/publisher/f/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/criteo/publisher/f/r;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f/r;Ljava/io/File;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/criteo/publisher/f/r$a;->b:Lcom/criteo/publisher/f/r;

    iput-object p2, p0, Lcom/criteo/publisher/f/r$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 5

    .line 1119
    iget-object v0, p0, Lcom/criteo/publisher/f/r$a;->b:Lcom/criteo/publisher/f/r;

    invoke-static {v0}, Lcom/criteo/publisher/f/r;->a(Lcom/criteo/publisher/f/r;)Lcom/criteo/publisher/f/t;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/f/r$a;->a:Ljava/io/File;

    .line 2114
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2115
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2080
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2081
    new-instance v1, Lcom/criteo/publisher/f/h;

    iget-object v0, v0, Lcom/criteo/publisher/f/t;->a:Lcom/criteo/publisher/f/v;

    invoke-direct {v1, v2, v3, v0}, Lcom/criteo/publisher/f/h;-><init>(Ljava/lang/String;Landroid/util/AtomicFile;Lcom/criteo/publisher/f/v;)V

    return-object v1
.end method
