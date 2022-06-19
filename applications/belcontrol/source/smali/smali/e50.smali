.class public abstract Le50;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;)Le50;
    .locals 0

    invoke-static {p0}, Lo50;->j(Landroid/content/Context;)Lo50;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Lr40;)V
    .locals 0

    invoke-static {p0, p1}, Lo50;->e(Landroid/content/Context;Lr40;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)La50;
.end method

.method public final b(Lf50;)La50;
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Le50;->c(Ljava/util/List;)La50;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ljava/util/List;)La50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lf50;",
            ">;)",
            "La50;"
        }
    .end annotation
.end method
