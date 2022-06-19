.class public Ld2/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/c4;


# direct methods
.method public constructor <init>(Ld2/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/w3;->a:Ld2/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/w3;->a:Ld2/c4;

    invoke-static {v0, p1}, Ld2/c4;->a(Ld2/c4;Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld2/w3;->a:Ld2/c4;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "filepath"

    .line 5
    invoke-virtual {p1, v1}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p1, v0, Ld2/c4;->i:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/io/File;

    iget-object v1, v0, Ld2/c4;->i:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
