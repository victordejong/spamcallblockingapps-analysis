.class final Lcom/criteo/publisher/advancednative/g$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/g;->loadImageInto(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/criteo/publisher/e/a$a;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/advancednative/g;

.field final synthetic b:Ljava/net/URL;

.field final synthetic c:Landroid/graphics/drawable/Drawable;

.field final synthetic d:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/g;Ljava/net/URL;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/criteo/publisher/advancednative/g$a;->a:Lcom/criteo/publisher/advancednative/g;

    iput-object p2, p0, Lcom/criteo/publisher/advancednative/g$a;->b:Ljava/net/URL;

    iput-object p3, p0, Lcom/criteo/publisher/advancednative/g$a;->c:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/criteo/publisher/advancednative/g$a;->d:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 27
    check-cast p1, Lcom/criteo/publisher/e/a$a;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/g$a;->a:Lcom/criteo/publisher/advancednative/g;

    invoke-static {v0}, Lcom/criteo/publisher/advancednative/g;->a(Lcom/criteo/publisher/advancednative/g;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/g$a;->b:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const-string v1, "picasso.load(imageUrl.toString())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1044
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/g$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/criteo/publisher/advancednative/g;->a(Lcom/squareup/picasso/RequestCreator;Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 1045
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/g$a;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/criteo/publisher/advancednative/g$a$a;

    invoke-direct {v2, p1}, Lcom/criteo/publisher/advancednative/g$a$a;-><init>(Lcom/criteo/publisher/e/a$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 27
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
