.class final Lcom/bumptech/glide/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/o$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/p;Landroid/content/Context;)Lcom/bumptech/glide/k;
    .locals 1

    .line 18
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideRequests;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/callapp/contacts/util/glide/GlideRequests;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/p;Landroid/content/Context;)V

    return-object v0
.end method
