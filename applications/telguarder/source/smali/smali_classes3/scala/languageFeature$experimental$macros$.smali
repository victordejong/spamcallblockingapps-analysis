.class public Lscala/languageFeature$experimental$macros$;
.super Ljava/lang/Object;
.source "languageFeature.scala"

# interfaces
.implements Lscala/languageFeature$experimental$macros;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/languageFeature$experimental$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "macros$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/languageFeature$experimental$macros$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/languageFeature$experimental$macros$;

    invoke-direct {v0}, Lscala/languageFeature$experimental$macros$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/languageFeature$experimental$macros$;->MODULE$:Lscala/languageFeature$experimental$macros$;

    return-void
.end method
