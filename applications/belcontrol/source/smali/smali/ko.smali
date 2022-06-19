.class public final synthetic Lko;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Llo$a;


# static fields
.field public static final a:Llo$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lko;

    invoke-direct {v0}, Lko;-><init>()V

    sput-object v0, Lko;->a:Llo$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IIIII)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Llo;->x(IIIII)Z

    move-result p1

    return p1
.end method
