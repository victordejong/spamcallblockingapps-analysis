.class public final enum Lcom/allinone/callerid/util/Week;
.super Ljava/lang/Enum;
.source "Week.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/allinone/callerid/util/Week;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/allinone/callerid/util/Week;

.field public static final enum e:Lcom/allinone/callerid/util/Week;

.field public static final enum f:Lcom/allinone/callerid/util/Week;

.field public static final enum g:Lcom/allinone/callerid/util/Week;

.field public static final enum h:Lcom/allinone/callerid/util/Week;

.field public static final enum i:Lcom/allinone/callerid/util/Week;

.field public static final enum j:Lcom/allinone/callerid/util/Week;

.field private static final synthetic k:[Lcom/allinone/callerid/util/Week;


# instance fields
.field name_cn:Ljava/lang/String;

.field name_en:Ljava/lang/String;

.field name_enShort:Ljava/lang/String;

.field number:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lcom/allinone/callerid/util/Week;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f10000a

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "MONDAY"

    const/4 v2, 0x0

    const-string v3, "\u661f\u671f\u4e00"

    const-string v5, "Mon."

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/allinone/callerid/util/Week;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v7, Lcom/allinone/callerid/util/Week;->d:Lcom/allinone/callerid/util/Week;

    .line 2
    new-instance v0, Lcom/allinone/callerid/util/Week;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const v2, 0x7f100021

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v9, "TUESDAY"

    const/4 v10, 0x1

    const-string v11, "\u661f\u671f\u4e8c"

    const-string v13, "Tues."

    const/4 v14, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/allinone/callerid/util/Week;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/allinone/callerid/util/Week;->e:Lcom/allinone/callerid/util/Week;

    .line 3
    new-instance v1, Lcom/allinone/callerid/util/Week;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    const v3, 0x7f100023

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v16, "WEDNESDAY"

    const/16 v17, 0x2

    const-string v18, "\u661f\u671f\u4e09"

    const-string v20, "Wed."

    const/16 v21, 0x3

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/allinone/callerid/util/Week;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/allinone/callerid/util/Week;->f:Lcom/allinone/callerid/util/Week;

    .line 4
    new-instance v2, Lcom/allinone/callerid/util/Week;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    const v4, 0x7f10001f

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v9, "THURSDAY"

    const/4 v10, 0x3

    const-string v11, "\u661f\u671f\u56db"

    const-string v13, "Thur."

    const/4 v14, 0x4

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/allinone/callerid/util/Week;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/allinone/callerid/util/Week;->g:Lcom/allinone/callerid/util/Week;

    .line 5
    new-instance v3, Lcom/allinone/callerid/util/Week;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    const v5, 0x7f100007

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v16, "FRIDAY"

    const/16 v17, 0x4

    const-string v18, "\u661f\u671f\u4e94"

    const-string v20, "Fri."

    const/16 v21, 0x5

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/allinone/callerid/util/Week;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/allinone/callerid/util/Week;->h:Lcom/allinone/callerid/util/Week;

    .line 6
    new-instance v4, Lcom/allinone/callerid/util/Week;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v5

    const v6, 0x7f100019

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v9, "SATURDAY"

    const/4 v10, 0x5

    const-string v11, "\u661f\u671f\u516d"

    const-string v13, "Sat."

    const/4 v14, 0x6

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/allinone/callerid/util/Week;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lcom/allinone/callerid/util/Week;->i:Lcom/allinone/callerid/util/Week;

    .line 7
    new-instance v5, Lcom/allinone/callerid/util/Week;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    const v8, 0x7f10001a

    invoke-virtual {v6, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v16, "SUNDAY"

    const/16 v17, 0x6

    const-string v18, "\u661f\u671f\u65e5"

    const-string v20, "Sun."

    const/16 v21, 0x7

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/allinone/callerid/util/Week;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v5, Lcom/allinone/callerid/util/Week;->j:Lcom/allinone/callerid/util/Week;

    const/4 v6, 0x7

    new-array v6, v6, [Lcom/allinone/callerid/util/Week;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object v2, v6, v0

    const/4 v0, 0x4

    aput-object v3, v6, v0

    const/4 v0, 0x5

    aput-object v4, v6, v0

    const/4 v0, 0x6

    aput-object v5, v6, v0

    .line 8
    sput-object v6, Lcom/allinone/callerid/util/Week;->k:[Lcom/allinone/callerid/util/Week;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/allinone/callerid/util/Week;->name_cn:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/allinone/callerid/util/Week;->name_en:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/allinone/callerid/util/Week;->name_enShort:Ljava/lang/String;

    .line 5
    iput p6, p0, Lcom/allinone/callerid/util/Week;->number:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/allinone/callerid/util/Week;
    .locals 1

    .line 1
    const-class v0, Lcom/allinone/callerid/util/Week;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/allinone/callerid/util/Week;

    return-object p0
.end method

.method public static values()[Lcom/allinone/callerid/util/Week;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/Week;->k:[Lcom/allinone/callerid/util/Week;

    invoke-virtual {v0}, [Lcom/allinone/callerid/util/Week;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/allinone/callerid/util/Week;

    return-object v0
.end method


# virtual methods
.method public getChineseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/Week;->name_cn:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/Week;->name_en:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/util/Week;->number:I

    return v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/Week;->name_enShort:Ljava/lang/String;

    return-object v0
.end method
