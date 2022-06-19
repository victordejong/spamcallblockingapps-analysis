.class public final Lcom/dropbox/core/g$1;
.super Lcom/dropbox/core/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/i$b<",
        "Lcom/dropbox/core/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dropbox/core/g;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/g;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/dropbox/core/g$1;->a:Lcom/dropbox/core/g;

    invoke-direct {p0}, Lcom/dropbox/core/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/dropbox/core/http/a$b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1140
    iget v0, p1, Lcom/dropbox/core/http/a$b;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1128
    sget-object v0, Lcom/dropbox/core/c;->j:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v0, p1}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/a$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/c;

    return-object p1

    .line 1126
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/http/a$b;)Lcom/dropbox/core/DbxException;

    move-result-object p1

    throw p1
.end method
