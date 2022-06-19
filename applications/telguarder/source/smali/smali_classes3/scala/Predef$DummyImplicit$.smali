.class public Lscala/Predef$DummyImplicit$;
.super Ljava/lang/Object;
.source "Predef.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyImplicit$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/Predef$DummyImplicit$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Predef$DummyImplicit$;

    invoke-direct {v0}, Lscala/Predef$DummyImplicit$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Predef$DummyImplicit$;->MODULE$:Lscala/Predef$DummyImplicit$;

    return-void
.end method


# virtual methods
.method public dummyImplicit()Lscala/Predef$DummyImplicit;
    .locals 1

    .line 414
    new-instance v0, Lscala/Predef$DummyImplicit;

    invoke-direct {v0}, Lscala/Predef$DummyImplicit;-><init>()V

    return-object v0
.end method
