.class public Lsk1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ltk1;

.field public static final b:[Lal1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltk1;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ltk1;

    invoke-direct {v0}, Ltk1;-><init>()V

    :goto_1
    sput-object v0, Lsk1;->a:Ltk1;

    const/4 v0, 0x0

    new-array v0, v0, [Lal1;

    sput-object v0, Lsk1;->b:[Lal1;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lal1;
    .locals 1

    sget-object v0, Lsk1;->a:Ltk1;

    invoke-virtual {v0, p0}, Ltk1;->a(Ljava/lang/Class;)Lal1;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lrk1;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk1;->a:Ltk1;

    invoke-virtual {v0, p0}, Ltk1;->c(Lrk1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
