package com.android.vcard;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/vcard/JapaneseUtils.class */
class JapaneseUtils {
    private static final Map<Character, String> sHalfWidthMap;

    static {
        HashMap hashMap = new HashMap();
        sHalfWidthMap = hashMap;
        hashMap.put((char) 12289, "､");
        sHalfWidthMap.put((char) 12290, "｡");
        sHalfWidthMap.put((char) 12300, "｢");
        sHalfWidthMap.put((char) 12301, "｣");
        sHalfWidthMap.put((char) 12316, "~");
        sHalfWidthMap.put((char) 12353, "ｧ");
        sHalfWidthMap.put((char) 12354, "ｱ");
        sHalfWidthMap.put((char) 12355, "ｨ");
        sHalfWidthMap.put((char) 12356, "ｲ");
        sHalfWidthMap.put((char) 12357, "ｩ");
        sHalfWidthMap.put((char) 12358, "ｳ");
        sHalfWidthMap.put((char) 12359, "ｪ");
        sHalfWidthMap.put((char) 12360, "ｴ");
        sHalfWidthMap.put((char) 12361, "ｫ");
        sHalfWidthMap.put((char) 12362, "ｵ");
        sHalfWidthMap.put((char) 12363, "ｶ");
        sHalfWidthMap.put((char) 12364, "ｶﾞ");
        sHalfWidthMap.put((char) 12365, "ｷ");
        sHalfWidthMap.put((char) 12366, "ｷﾞ");
        sHalfWidthMap.put((char) 12367, "ｸ");
        sHalfWidthMap.put((char) 12368, "ｸﾞ");
        sHalfWidthMap.put((char) 12369, "ｹ");
        sHalfWidthMap.put((char) 12370, "ｹﾞ");
        sHalfWidthMap.put((char) 12371, "ｺ");
        sHalfWidthMap.put((char) 12372, "ｺﾞ");
        sHalfWidthMap.put((char) 12373, "ｻ");
        sHalfWidthMap.put((char) 12374, "ｻﾞ");
        sHalfWidthMap.put((char) 12375, "ｼ");
        sHalfWidthMap.put((char) 12376, "ｼﾞ");
        sHalfWidthMap.put((char) 12377, "ｽ");
        sHalfWidthMap.put((char) 12378, "ｽﾞ");
        sHalfWidthMap.put((char) 12379, "ｾ");
        sHalfWidthMap.put((char) 12380, "ｾﾞ");
        sHalfWidthMap.put((char) 12381, "ｿ");
        sHalfWidthMap.put((char) 12382, "ｿﾞ");
        sHalfWidthMap.put((char) 12383, "ﾀ");
        sHalfWidthMap.put((char) 12384, "ﾀﾞ");
        sHalfWidthMap.put((char) 12385, "ﾁ");
        sHalfWidthMap.put((char) 12386, "ﾁﾞ");
        sHalfWidthMap.put((char) 12387, "ｯ");
        sHalfWidthMap.put((char) 12388, "ﾂ");
        sHalfWidthMap.put((char) 12389, "ﾂﾞ");
        sHalfWidthMap.put((char) 12390, "ﾃ");
        sHalfWidthMap.put((char) 12391, "ﾃﾞ");
        sHalfWidthMap.put((char) 12392, "ﾄ");
        sHalfWidthMap.put((char) 12393, "ﾄﾞ");
        sHalfWidthMap.put((char) 12394, "ﾅ");
        sHalfWidthMap.put((char) 12395, "ﾆ");
        sHalfWidthMap.put((char) 12396, "ﾇ");
        sHalfWidthMap.put((char) 12397, "ﾈ");
        sHalfWidthMap.put((char) 12398, "ﾉ");
        sHalfWidthMap.put((char) 12399, "ﾊ");
        sHalfWidthMap.put((char) 12400, "ﾊﾞ");
        sHalfWidthMap.put((char) 12401, "ﾊﾟ");
        sHalfWidthMap.put((char) 12402, "ﾋ");
        sHalfWidthMap.put((char) 12403, "ﾋﾞ");
        sHalfWidthMap.put((char) 12404, "ﾋﾟ");
        sHalfWidthMap.put((char) 12405, "ﾌ");
        sHalfWidthMap.put((char) 12406, "ﾌﾞ");
        sHalfWidthMap.put((char) 12407, "ﾌﾟ");
        sHalfWidthMap.put((char) 12408, "ﾍ");
        sHalfWidthMap.put((char) 12409, "ﾍﾞ");
        sHalfWidthMap.put((char) 12410, "ﾍﾟ");
        sHalfWidthMap.put((char) 12411, "ﾎ");
        sHalfWidthMap.put((char) 12412, "ﾎﾞ");
        sHalfWidthMap.put((char) 12413, "ﾎﾟ");
        sHalfWidthMap.put((char) 12414, "ﾏ");
        sHalfWidthMap.put((char) 12415, "ﾐ");
        sHalfWidthMap.put((char) 12416, "ﾑ");
        sHalfWidthMap.put((char) 12417, "ﾒ");
        sHalfWidthMap.put((char) 12418, "ﾓ");
        sHalfWidthMap.put((char) 12419, "ｬ");
        sHalfWidthMap.put((char) 12420, "ﾔ");
        sHalfWidthMap.put((char) 12421, "ｭ");
        sHalfWidthMap.put((char) 12422, "ﾕ");
        sHalfWidthMap.put((char) 12423, "ｮ");
        sHalfWidthMap.put((char) 12424, "ﾖ");
        sHalfWidthMap.put((char) 12425, "ﾗ");
        sHalfWidthMap.put((char) 12426, "ﾘ");
        sHalfWidthMap.put((char) 12427, "ﾙ");
        sHalfWidthMap.put((char) 12428, "ﾚ");
        sHalfWidthMap.put((char) 12429, "ﾛ");
        sHalfWidthMap.put((char) 12430, "ﾜ");
        sHalfWidthMap.put((char) 12431, "ﾜ");
        sHalfWidthMap.put((char) 12432, "ｲ");
        sHalfWidthMap.put((char) 12433, "ｴ");
        sHalfWidthMap.put((char) 12434, "ｦ");
        sHalfWidthMap.put((char) 12435, "ﾝ");
        sHalfWidthMap.put((char) 12443, "ﾞ");
        sHalfWidthMap.put((char) 12444, "ﾟ");
        sHalfWidthMap.put((char) 12449, "ｧ");
        sHalfWidthMap.put((char) 12450, "ｱ");
        sHalfWidthMap.put((char) 12451, "ｨ");
        sHalfWidthMap.put((char) 12452, "ｲ");
        sHalfWidthMap.put((char) 12453, "ｩ");
        sHalfWidthMap.put((char) 12454, "ｳ");
        sHalfWidthMap.put((char) 12455, "ｪ");
        sHalfWidthMap.put((char) 12456, "ｴ");
        sHalfWidthMap.put((char) 12457, "ｫ");
        sHalfWidthMap.put((char) 12458, "ｵ");
        sHalfWidthMap.put((char) 12459, "ｶ");
        sHalfWidthMap.put((char) 12460, "ｶﾞ");
        sHalfWidthMap.put((char) 12461, "ｷ");
        sHalfWidthMap.put((char) 12462, "ｷﾞ");
        sHalfWidthMap.put((char) 12463, "ｸ");
        sHalfWidthMap.put((char) 12464, "ｸﾞ");
        sHalfWidthMap.put((char) 12465, "ｹ");
        sHalfWidthMap.put((char) 12466, "ｹﾞ");
        sHalfWidthMap.put((char) 12467, "ｺ");
        sHalfWidthMap.put((char) 12468, "ｺﾞ");
        sHalfWidthMap.put((char) 12469, "ｻ");
        sHalfWidthMap.put((char) 12470, "ｻﾞ");
        sHalfWidthMap.put((char) 12471, "ｼ");
        sHalfWidthMap.put((char) 12472, "ｼﾞ");
        sHalfWidthMap.put((char) 12473, "ｽ");
        sHalfWidthMap.put((char) 12474, "ｽﾞ");
        sHalfWidthMap.put((char) 12475, "ｾ");
        sHalfWidthMap.put((char) 12476, "ｾﾞ");
        sHalfWidthMap.put((char) 12477, "ｿ");
        sHalfWidthMap.put((char) 12478, "ｿﾞ");
        sHalfWidthMap.put((char) 12479, "ﾀ");
        sHalfWidthMap.put((char) 12480, "ﾀﾞ");
        sHalfWidthMap.put((char) 12481, "ﾁ");
        sHalfWidthMap.put((char) 12482, "ﾁﾞ");
        sHalfWidthMap.put((char) 12483, "ｯ");
        sHalfWidthMap.put((char) 12484, "ﾂ");
        sHalfWidthMap.put((char) 12485, "ﾂﾞ");
        sHalfWidthMap.put((char) 12486, "ﾃ");
        sHalfWidthMap.put((char) 12487, "ﾃﾞ");
        sHalfWidthMap.put((char) 12488, "ﾄ");
        sHalfWidthMap.put((char) 12489, "ﾄﾞ");
        sHalfWidthMap.put((char) 12490, "ﾅ");
        sHalfWidthMap.put((char) 12491, "ﾆ");
        sHalfWidthMap.put((char) 12492, "ﾇ");
        sHalfWidthMap.put((char) 12493, "ﾈ");
        sHalfWidthMap.put((char) 12494, "ﾉ");
        sHalfWidthMap.put((char) 12495, "ﾊ");
        sHalfWidthMap.put((char) 12496, "ﾊﾞ");
        sHalfWidthMap.put((char) 12497, "ﾊﾟ");
        sHalfWidthMap.put((char) 12498, "ﾋ");
        sHalfWidthMap.put((char) 12499, "ﾋﾞ");
        sHalfWidthMap.put((char) 12500, "ﾋﾟ");
        sHalfWidthMap.put((char) 12501, "ﾌ");
        sHalfWidthMap.put((char) 12502, "ﾌﾞ");
        sHalfWidthMap.put((char) 12503, "ﾌﾟ");
        sHalfWidthMap.put((char) 12504, "ﾍ");
        sHalfWidthMap.put((char) 12505, "ﾍﾞ");
        sHalfWidthMap.put((char) 12506, "ﾍﾟ");
        sHalfWidthMap.put((char) 12507, "ﾎ");
        sHalfWidthMap.put((char) 12508, "ﾎﾞ");
        sHalfWidthMap.put((char) 12509, "ﾎﾟ");
        sHalfWidthMap.put((char) 12510, "ﾏ");
        sHalfWidthMap.put((char) 12511, "ﾐ");
        sHalfWidthMap.put((char) 12512, "ﾑ");
        sHalfWidthMap.put((char) 12513, "ﾒ");
        sHalfWidthMap.put((char) 12514, "ﾓ");
        sHalfWidthMap.put((char) 12515, "ｬ");
        sHalfWidthMap.put((char) 12516, "ﾔ");
        sHalfWidthMap.put((char) 12517, "ｭ");
        sHalfWidthMap.put((char) 12518, "ﾕ");
        sHalfWidthMap.put((char) 12519, "ｮ");
        sHalfWidthMap.put((char) 12520, "ﾖ");
        sHalfWidthMap.put((char) 12521, "ﾗ");
        sHalfWidthMap.put((char) 12522, "ﾘ");
        sHalfWidthMap.put((char) 12523, "ﾙ");
        sHalfWidthMap.put((char) 12524, "ﾚ");
        sHalfWidthMap.put((char) 12525, "ﾛ");
        sHalfWidthMap.put((char) 12526, "ﾜ");
        sHalfWidthMap.put((char) 12527, "ﾜ");
        sHalfWidthMap.put((char) 12528, "ｲ");
        sHalfWidthMap.put((char) 12529, "ｴ");
        sHalfWidthMap.put((char) 12530, "ｦ");
        sHalfWidthMap.put((char) 12531, "ﾝ");
        sHalfWidthMap.put((char) 12532, "ｳﾞ");
        sHalfWidthMap.put((char) 12533, "ｶ");
        sHalfWidthMap.put((char) 12534, "ｹ");
        sHalfWidthMap.put((char) 12539, "･");
        sHalfWidthMap.put((char) 12540, "ｰ");
        sHalfWidthMap.put((char) 65281, "!");
        sHalfWidthMap.put((char) 65282, "\"");
        sHalfWidthMap.put((char) 65283, "#");
        sHalfWidthMap.put((char) 65284, "$");
        sHalfWidthMap.put((char) 65285, "%");
        sHalfWidthMap.put((char) 65286, "&");
        sHalfWidthMap.put((char) 65287, "'");
        sHalfWidthMap.put((char) 65288, "(");
        sHalfWidthMap.put((char) 65289, ")");
        sHalfWidthMap.put((char) 65290, "*");
        sHalfWidthMap.put((char) 65291, "+");
        sHalfWidthMap.put((char) 65292, ",");
        sHalfWidthMap.put((char) 65293, "-");
        sHalfWidthMap.put((char) 65294, ".");
        sHalfWidthMap.put((char) 65295, "/");
        sHalfWidthMap.put((char) 65296, "0");
        sHalfWidthMap.put((char) 65297, "1");
        sHalfWidthMap.put((char) 65298, "2");
        sHalfWidthMap.put((char) 65299, "3");
        sHalfWidthMap.put((char) 65300, "4");
        sHalfWidthMap.put((char) 65301, "5");
        sHalfWidthMap.put((char) 65302, "6");
        sHalfWidthMap.put((char) 65303, "7");
        sHalfWidthMap.put((char) 65304, "8");
        sHalfWidthMap.put((char) 65305, "9");
        sHalfWidthMap.put((char) 65306, ":");
        sHalfWidthMap.put((char) 65307, ";");
        sHalfWidthMap.put((char) 65308, "<");
        sHalfWidthMap.put((char) 65309, "=");
        sHalfWidthMap.put((char) 65310, ">");
        sHalfWidthMap.put((char) 65311, "?");
        sHalfWidthMap.put((char) 65312, "@");
        sHalfWidthMap.put((char) 65313, "A");
        sHalfWidthMap.put((char) 65314, VCardConstants.PARAM_ENCODING_B);
        sHalfWidthMap.put((char) 65315, "C");
        sHalfWidthMap.put((char) 65316, "D");
        sHalfWidthMap.put((char) 65317, "E");
        sHalfWidthMap.put((char) 65318, "F");
        sHalfWidthMap.put((char) 65319, "G");
        sHalfWidthMap.put((char) 65320, "H");
        sHalfWidthMap.put((char) 65321, "I");
        sHalfWidthMap.put((char) 65322, "J");
        sHalfWidthMap.put((char) 65323, "K");
        sHalfWidthMap.put((char) 65324, "L");
        sHalfWidthMap.put((char) 65325, "M");
        sHalfWidthMap.put((char) 65326, VCardConstants.PROPERTY_N);
        sHalfWidthMap.put((char) 65327, "O");
        sHalfWidthMap.put((char) 65328, "P");
        sHalfWidthMap.put((char) 65329, "Q");
        sHalfWidthMap.put((char) 65330, "R");
        sHalfWidthMap.put((char) 65331, "S");
        sHalfWidthMap.put((char) 65332, "T");
        sHalfWidthMap.put((char) 65333, "U");
        sHalfWidthMap.put((char) 65334, "V");
        sHalfWidthMap.put((char) 65335, "W");
        sHalfWidthMap.put((char) 65336, "X");
        sHalfWidthMap.put((char) 65337, "Y");
        sHalfWidthMap.put((char) 65338, "Z");
        sHalfWidthMap.put((char) 65339, "[");
        sHalfWidthMap.put((char) 65340, "\\");
        sHalfWidthMap.put((char) 65341, "]");
        sHalfWidthMap.put((char) 65342, "^");
        sHalfWidthMap.put((char) 65343, "_");
        sHalfWidthMap.put((char) 65345, "a");
        sHalfWidthMap.put((char) 65346, "b");
        sHalfWidthMap.put((char) 65347, "c");
        sHalfWidthMap.put((char) 65348, "d");
        sHalfWidthMap.put((char) 65349, "e");
        sHalfWidthMap.put((char) 65350, "f");
        sHalfWidthMap.put((char) 65351, "g");
        sHalfWidthMap.put((char) 65352, "h");
        sHalfWidthMap.put((char) 65353, "i");
        sHalfWidthMap.put((char) 65354, "j");
        sHalfWidthMap.put((char) 65355, "k");
        sHalfWidthMap.put((char) 65356, "l");
        sHalfWidthMap.put((char) 65357, "m");
        sHalfWidthMap.put((char) 65358, "n");
        sHalfWidthMap.put((char) 65359, "o");
        sHalfWidthMap.put((char) 65360, "p");
        sHalfWidthMap.put((char) 65361, "q");
        sHalfWidthMap.put((char) 65362, "r");
        sHalfWidthMap.put((char) 65363, "s");
        sHalfWidthMap.put((char) 65364, "t");
        sHalfWidthMap.put((char) 65365, "u");
        sHalfWidthMap.put((char) 65366, "v");
        sHalfWidthMap.put((char) 65367, "w");
        sHalfWidthMap.put((char) 65368, "x");
        sHalfWidthMap.put((char) 65369, "y");
        sHalfWidthMap.put((char) 65370, "z");
        sHalfWidthMap.put((char) 65371, "{");
        sHalfWidthMap.put((char) 65372, "|");
        sHalfWidthMap.put((char) 65373, "}");
        sHalfWidthMap.put((char) 65374, "~");
        sHalfWidthMap.put((char) 65377, "｡");
        sHalfWidthMap.put((char) 65378, "｢");
        sHalfWidthMap.put((char) 65379, "｣");
        sHalfWidthMap.put((char) 65380, "､");
        sHalfWidthMap.put((char) 65381, "･");
        sHalfWidthMap.put((char) 65382, "ｦ");
        sHalfWidthMap.put((char) 65383, "ｧ");
        sHalfWidthMap.put((char) 65384, "ｨ");
        sHalfWidthMap.put((char) 65385, "ｩ");
        sHalfWidthMap.put((char) 65386, "ｪ");
        sHalfWidthMap.put((char) 65387, "ｫ");
        sHalfWidthMap.put((char) 65388, "ｬ");
        sHalfWidthMap.put((char) 65389, "ｭ");
        sHalfWidthMap.put((char) 65390, "ｮ");
        sHalfWidthMap.put((char) 65391, "ｯ");
        sHalfWidthMap.put((char) 65392, "ｰ");
        sHalfWidthMap.put((char) 65393, "ｱ");
        sHalfWidthMap.put((char) 65394, "ｲ");
        sHalfWidthMap.put((char) 65395, "ｳ");
        sHalfWidthMap.put((char) 65396, "ｴ");
        sHalfWidthMap.put((char) 65397, "ｵ");
        sHalfWidthMap.put((char) 65398, "ｶ");
        sHalfWidthMap.put((char) 65399, "ｷ");
        sHalfWidthMap.put((char) 65400, "ｸ");
        sHalfWidthMap.put((char) 65401, "ｹ");
        sHalfWidthMap.put((char) 65402, "ｺ");
        sHalfWidthMap.put((char) 65403, "ｻ");
        sHalfWidthMap.put((char) 65404, "ｼ");
        sHalfWidthMap.put((char) 65405, "ｽ");
        sHalfWidthMap.put((char) 65406, "ｾ");
        sHalfWidthMap.put((char) 65407, "ｿ");
        sHalfWidthMap.put((char) 65408, "ﾀ");
        sHalfWidthMap.put((char) 65409, "ﾁ");
        sHalfWidthMap.put((char) 65410, "ﾂ");
        sHalfWidthMap.put((char) 65411, "ﾃ");
        sHalfWidthMap.put((char) 65412, "ﾄ");
        sHalfWidthMap.put((char) 65413, "ﾅ");
        sHalfWidthMap.put((char) 65414, "ﾆ");
        sHalfWidthMap.put((char) 65415, "ﾇ");
        sHalfWidthMap.put((char) 65416, "ﾈ");
        sHalfWidthMap.put((char) 65417, "ﾉ");
        sHalfWidthMap.put((char) 65418, "ﾊ");
        sHalfWidthMap.put((char) 65419, "ﾋ");
        sHalfWidthMap.put((char) 65420, "ﾌ");
        sHalfWidthMap.put((char) 65421, "ﾍ");
        sHalfWidthMap.put((char) 65422, "ﾎ");
        sHalfWidthMap.put((char) 65423, "ﾏ");
        sHalfWidthMap.put((char) 65424, "ﾐ");
        sHalfWidthMap.put((char) 65425, "ﾑ");
        sHalfWidthMap.put((char) 65426, "ﾒ");
        sHalfWidthMap.put((char) 65427, "ﾓ");
        sHalfWidthMap.put((char) 65428, "ﾔ");
        sHalfWidthMap.put((char) 65429, "ﾕ");
        sHalfWidthMap.put((char) 65430, "ﾖ");
        sHalfWidthMap.put((char) 65431, "ﾗ");
        sHalfWidthMap.put((char) 65432, "ﾘ");
        sHalfWidthMap.put((char) 65433, "ﾙ");
        sHalfWidthMap.put((char) 65434, "ﾚ");
        sHalfWidthMap.put((char) 65435, "ﾛ");
        sHalfWidthMap.put((char) 65436, "ﾜ");
        sHalfWidthMap.put((char) 65437, "ﾝ");
        sHalfWidthMap.put((char) 65438, "ﾞ");
        sHalfWidthMap.put((char) 65439, "ﾟ");
        sHalfWidthMap.put((char) 65509, "\\");
    }

    JapaneseUtils() {
    }

    public static String tryGetHalfWidthText(char c) {
        return sHalfWidthMap.containsKey(Character.valueOf(c)) ? sHalfWidthMap.get(Character.valueOf(c)) : null;
    }
}
