.class final Landroidx/work/impl/utils/i$1;
.super Landroidx/work/impl/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/i;->a(Landroidx/work/impl/j;Ljava/lang/String;)Landroidx/work/impl/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/utils/i<",
        "Ljava/util/List<",
        "Landroidx/work/t;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroidx/work/impl/j;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/work/impl/j;Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Landroidx/work/impl/utils/i$1;->b:Landroidx/work/impl/j;

    iput-object p2, p0, Landroidx/work/impl/utils/i$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/work/impl/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1128
    iget-object v0, p0, Landroidx/work/impl/utils/i$1;->b:Landroidx/work/impl/j;

    .line 1317
    iget-object v0, v0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 1130
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/utils/i$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getWorkStatusPojoForTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1132
    sget-object v1, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Landroidx/a/a/c/a;

    invoke-interface {v1, v0}, Landroidx/a/a/c/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
