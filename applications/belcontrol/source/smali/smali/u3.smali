.class public Lu3;
.super Lw3;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw3;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    new-instance v0, Lu3$a;

    invoke-direct {v0, p0}, Lu3$a;-><init>(Lu3;)V

    sput-object v0, La4;->r:La4$a;

    return-void
.end method
