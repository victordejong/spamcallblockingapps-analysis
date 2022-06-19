.class public final Lcom/criteo/publisher/advancednative/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/ImageLoader;


# instance fields
.field private final a:Lcom/squareup/picasso/Picasso;

.field private final b:Lcom/criteo/publisher/e/a;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/criteo/publisher/e/a;)V
    .locals 1

    const-string v0, "picasso"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncResources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/advancednative/g;->a:Lcom/squareup/picasso/Picasso;

    iput-object p2, p0, Lcom/criteo/publisher/advancednative/g;->b:Lcom/criteo/publisher/e/a;

    return-void
.end method

.method public static final synthetic a(Lcom/criteo/publisher/advancednative/g;)Lcom/squareup/picasso/Picasso;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/criteo/publisher/advancednative/g;->a:Lcom/squareup/picasso/Picasso;

    return-object p0
.end method

.method public static final synthetic a(Lcom/squareup/picasso/RequestCreator;Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;
    .locals 0

    if-eqz p1, :cond_0

    .line 1054
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    const-string p1, "placeholder(placeholder)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final loadImageInto(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/g;->b:Lcom/criteo/publisher/e/a;

    new-instance v1, Lcom/criteo/publisher/advancednative/g$a;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/criteo/publisher/advancednative/g$a;-><init>(Lcom/criteo/publisher/advancednative/g;Ljava/net/URL;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    const-string p1, "resourceHandler"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2024
    new-instance p1, Lcom/criteo/publisher/e/a$a;

    invoke-direct {p1, v0}, Lcom/criteo/publisher/e/a$a;-><init>(Lcom/criteo/publisher/e/a;)V

    .line 2026
    :try_start_0
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 2028
    invoke-virtual {p1}, Lcom/criteo/publisher/e/a$a;->a()V

    .line 2029
    throw p2
.end method

.method public final preload(Ljava/net/URL;)V
    .locals 1

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/g;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fetch()V

    return-void
.end method
