.class public Lscala/languageFeature$reflectiveCalls$;
.super Ljava/lang/Object;
.source "languageFeature.scala"

# interfaces
.implements Lscala/languageFeature$reflectiveCalls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/languageFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "reflectiveCalls$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/languageFeature$reflectiveCalls$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/languageFeature$reflectiveCalls$;

    invoke-direct {v0}, Lscala/languageFeature$reflectiveCalls$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/languageFeature$reflectiveCalls$;->MODULE$:Lscala/languageFeature$reflectiveCalls$;

    return-void
.end method
