.class public Lcom/callapp/contacts/util/glide/CallAppRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/callapp/contacts/model/contact/ContactData;

.field private c:Lcom/bumptech/glide/e/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/util/glide/CallAppRequestListener;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Lcom/bumptech/glide/e/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Lcom/bumptech/glide/e/g;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/CallAppRequestListener;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/callapp/contacts/util/glide/CallAppRequestListener;->b:Lcom/callapp/contacts/model/contact/ContactData;

    .line 25
    iput-object p3, p0, Lcom/callapp/contacts/util/glide/CallAppRequestListener;->c:Lcom/bumptech/glide/e/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/e/a/j<",
            "TT;>;Z)Z"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/CallAppRequestListener;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/CallAppRequestListener;->b:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/CallAppRequestListener;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/CallAppRequestListener;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->removeCurrentPhotoUrl(Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/CallAppRequestListener;->c:Lcom/bumptech/glide/e/g;

    if-eqz v0, :cond_1

    .line 35
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/e/g;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/e/a/j<",
            "TT;>;",
            "Lcom/bumptech/glide/load/a;",
            "Z)Z"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/CallAppRequestListener;->c:Lcom/bumptech/glide/e/g;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 43
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/e/g;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
