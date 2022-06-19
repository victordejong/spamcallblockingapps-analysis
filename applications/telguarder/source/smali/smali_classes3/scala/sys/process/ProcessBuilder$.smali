.class public final Lscala/sys/process/ProcessBuilder$;
.super Ljava/lang/Object;
.source "ProcessBuilder.scala"

# interfaces
.implements Lscala/sys/process/ProcessBuilderImpl;


# static fields
.field public static final MODULE$:Lscala/sys/process/ProcessBuilder$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/process/ProcessBuilder$;

    invoke-direct {v0}, Lscala/sys/process/ProcessBuilder$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/process/ProcessBuilder$;->MODULE$:Lscala/sys/process/ProcessBuilder$;

    invoke-static {p0}, Lscala/sys/process/ProcessBuilderImpl$class;->$init$(Lscala/sys/process/ProcessBuilder$;)V

    return-void
.end method
