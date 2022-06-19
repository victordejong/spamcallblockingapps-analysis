.class public final synthetic Lao;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldo$g;


# static fields
.field public static final a:Ldo$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lao;

    invoke-direct {v0}, Lao;-><init>()V

    sput-object v0, Lao;->a:Ldo$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lwn;

    invoke-static {p1}, Ldo;->q(Lwn;)I

    move-result p1

    return p1
.end method
