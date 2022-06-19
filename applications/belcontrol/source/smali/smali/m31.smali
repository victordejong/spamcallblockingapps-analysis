.class public final Lm31;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lr41;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr41;

    invoke-direct {v0}, Lr41;-><init>()V

    sput-object v0, Lm31;->a:Lr41;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lm31;->a:Lr41;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr41;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm31;->a:Lr41;

    invoke-virtual {v0}, Lr41;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lm31;->a:Lr41;

    invoke-virtual {v0}, Lr41;->e()Z

    move-result v0

    return v0
.end method
