.class final Lcom/callapp/contacts/loader/device/DeviceIdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Ljava/lang/String;JZZZ)Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:J

.field final synthetic d:Z


# direct methods
.method constructor <init>(ZZJZ)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$1;->a:Z

    iput-boolean p2, p0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$1;->b:Z

    iput-wide p3, p0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$1;->c:J

    iput-boolean p5, p0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 7

    .line 1164
    new-instance v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;-><init>()V

    .line 1166
    iget-boolean v1, p0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$1;->a:Z

    if-eqz v1, :cond_0

    .line 1167
    sget-object v1, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->a:Ljava/lang/Long;

    .line 1170
    :cond_0
    iget-boolean v1, p0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$1;->b:Z

    if-eqz v1, :cond_2

    .line 1171
    sget-object v1, Lcom/callapp/contacts/model/Constants;->DISPLAY_NAME_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1172
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$1;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    const-string v2, "display_name_source"

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/framework/dao/RowContext;->d(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_2

    .line 1173
    :cond_1
    iput-object v1, v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->b:Ljava/lang/String;

    .line 1177
    :cond_2
    iget-boolean v1, p0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$1;->d:Z

    if-eqz v1, :cond_3

    .line 1178
    sget-object v1, Lcom/callapp/contacts/model/Constants;->STARRED_COLUMN:Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->c:Ljava/lang/Boolean;

    :cond_3
    return-object v0
.end method
