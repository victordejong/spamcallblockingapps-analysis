.class public final synthetic Le5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic b:Le5/i;

.field public static final synthetic c:Le5/i;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Le5/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le5/i;-><init>(I)V

    sput-object v0, Le5/i;->b:Le5/i;

    new-instance v0, Le5/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le5/i;-><init>(I)V

    sput-object v0, Le5/i;->c:Le5/i;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Le5/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget p1, p0, Le5/i;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, ".ae"

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2
    :goto_0
    sget-object p1, Lj5/f;->g:Ljava/nio/charset/Charset;

    const-string p1, "event"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
