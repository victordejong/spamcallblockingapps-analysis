.class public Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;->verify(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;


# direct methods
.method public constructor <init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3$1;->this$0:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->allNumberGroupsRemainGrouped(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
