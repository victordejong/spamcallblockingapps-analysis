.class public Lby;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lby;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lby;

    invoke-direct {v0}, Lby;-><init>()V

    sput-object v0, Lby;->a:Lby;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lby;
    .locals 1

    sget-object v0, Lby;->a:Lby;

    return-object v0
.end method


# virtual methods
.method public b()Lyx;
    .locals 1

    new-instance v0, Lyx;

    invoke-direct {v0}, Lyx;-><init>()V

    return-object v0
.end method

.method public c()Lay;
    .locals 1

    new-instance v0, Lay;

    invoke-direct {v0}, Lay;-><init>()V

    return-object v0
.end method
