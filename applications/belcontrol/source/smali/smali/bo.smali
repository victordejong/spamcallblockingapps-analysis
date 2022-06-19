.class public final synthetic Lbo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldo$g;


# static fields
.field public static final a:Ldo$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbo;

    invoke-direct {v0}, Lbo;-><init>()V

    sput-object v0, Lbo;->a:Ldo$g;

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

    invoke-static {p1}, Ldo;->r(Lwn;)I

    move-result p1

    return p1
.end method
