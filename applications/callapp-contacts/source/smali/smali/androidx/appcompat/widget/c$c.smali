.class final Landroidx/appcompat/widget/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroidx/appcompat/widget/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/c$c;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/c$a;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/c$d;",
            ">;)V"
        }
    .end annotation

    .line 927
    iget-object v0, p0, Landroidx/appcompat/widget/c$c;->a:Ljava/util/Map;

    .line 929
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 931
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 933
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/c$a;

    const/4 v4, 0x0

    .line 934
    iput v4, v3, Landroidx/appcompat/widget/c$a;->b:F

    .line 935
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroidx/appcompat/widget/c$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroidx/appcompat/widget/c$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 941
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    if-ltz v1, :cond_2

    .line 944
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/c$d;

    .line 945
    iget-object v4, v3, Landroidx/appcompat/widget/c$d;->a:Landroid/content/ComponentName;

    .line 946
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/c$a;

    if-eqz v4, :cond_1

    .line 948
    iget v5, v4, Landroidx/appcompat/widget/c$a;->b:F

    iget v3, v3, Landroidx/appcompat/widget/c$d;->c:F

    mul-float v3, v3, v2

    add-float/2addr v5, v3

    iput v5, v4, Landroidx/appcompat/widget/c$a;->b:F

    const v3, 0x3f733333    # 0.95f

    mul-float v2, v2, v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 953
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method
