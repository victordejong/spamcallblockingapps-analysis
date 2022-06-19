.class final Lcom/callapp/contacts/util/CallLogUtils$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/CallLogUtils;->a(Z)Lcom/callapp/contacts/util/CallLogEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Lcom/callapp/contacts/util/CallLogEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 11

    const-string v0, "type"

    .line 1655
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->d(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "number"

    .line 1656
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "date"

    .line 1657
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    const-string v1, "duration"

    .line 1658
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    .line 1659
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1660
    new-instance v10, Lcom/callapp/contacts/util/CallLogEntry;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/util/CallLogEntry;-><init>(ILjava/lang/String;Ljava/util/Date;JJ)V

    return-object v10
.end method
