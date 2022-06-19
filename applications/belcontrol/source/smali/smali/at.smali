.class public final synthetic Lat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lau;


# static fields
.field public static final a:Lau;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lat;

    invoke-direct {v0}, Lat;-><init>()V

    sput-object v0, Lat;->a:Lau;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lzs;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
