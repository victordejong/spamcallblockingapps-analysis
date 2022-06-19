.class public final synthetic Lcl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldk;


# static fields
.field public static final a:Ldk;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcl;

    invoke-direct {v0}, Lcl;-><init>()V

    sput-object v0, Lcl;->a:Ldk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractors()[Lak;
    .locals 1

    invoke-static {}, Lel;->g()[Lak;

    move-result-object v0

    return-object v0
.end method
