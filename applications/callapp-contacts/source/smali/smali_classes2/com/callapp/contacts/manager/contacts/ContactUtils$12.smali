.class final Lcom/callapp/contacts/manager/contacts/ContactUtils$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/contacts/ContactUtils;->getContactIdToThumbnailUriMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/callapp/contacts/manager/contacts/ContactUtils$12;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRow(Lcom/callapp/contacts/framework/dao/RowContext;)V
    .locals 3

    const-string v0, "_id"

    .line 992
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "photo_thumb_uri"

    .line 993
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 994
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 995
    iget-object v2, p0, Lcom/callapp/contacts/manager/contacts/ContactUtils$12;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
